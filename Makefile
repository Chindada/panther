PYTHON=$(shell which python3)
PIP=$(shell which pip3)
PROTOC_PATH=$(shell which protoc)
PROTOC_INCLUDE_PATH=$(shell dirname $(shell dirname "$(PROTOC_PATH)"))

compile: pre build-capitan compile-go compile-ts compile-dart compile-py build-py update

compile-go:
	@rm -rf golang && mkdir -p golang
	@go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	@go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	@$(PROTOC_PATH) \
		--proto_path=protos/v1 \
		--go_out=golang \
		--go-grpc_out=golang \
		./protos/v1/*/*.proto
	@. ./scripts/gomod_update.sh

compile-ts:
	@rm -rf typescript && mkdir -p typescript
	@npm install -g @protobuf-ts/plugin
	@$(PROTOC_PATH) \
		--proto_path=protos/v1 \
		--ts_opt=use_proto_field_name \
		--ts_opt=long_type_number \
		--ts_opt=force_client_none \
		--ts_opt=server_none \
		--ts_out=typescript \
		./protos/v1/*/*.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/any.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/duration.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/empty.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/struct.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/timestamp.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/wrappers.proto

compile-dart:
	@rm -rf lib && mkdir -p lib
	@dart pub global activate --overwrite protoc_plugin
	@$(PROTOC_PATH) \
		--proto_path=protos/v1 \
		--dart_out=lib \
		./protos/v1/*/*.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/any.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/duration.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/empty.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/struct.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/timestamp.proto \
		$(PROTOC_INCLUDE_PATH)/include/google/protobuf/wrappers.proto

compile-py: check
	@rm -rf python/panther && mkdir -p python/panther
	@$(PYTHON) -m grpc_tools.protoc \
		--grpc_python_out=python/panther \
		--python_out=pyi_out:python/panther \
		--proto_path=protos/v1 \
		./protos/v1/*/*.proto
	@./scripts/modify_py_import.sh python/panther

build-py: check
	@rm -rf dist
	@$(PYTHON) -m build
	@rm -f dist/*.tar.gz

check: ## check environment
ifneq ($(PYTHON),$(PWD)/venv/bin/python3)
	$(error "Please run 'make venv' first")
endif
	@echo "Venv python version: $(shell $(PYTHON) --version | awk '{print $$2}')"
	@echo "Python path: $(PYTHON)"
	@$(PIP) install --upgrade pip
	@$(PIP) install -U --no-warn-script-location --no-cache-dir grpcio-tools build

clean:
	@rm -rf venv

venv: clean
	@$(PYTHON) -m venv venv

go-mod-update:
	@./scripts/gomod_update.sh

npm-update:
	@./scripts/update_dependency.sh

dart-update:
	@./scripts/dart_update.sh

update: go-mod-update npm-update dart-update

pre:
	@go install github.com/go-bindata/go-bindata/...@latest

build-capitan: pre
	@rm -f migrations/capitan/bindata.go
	@go-bindata -o migrations/capitan/bindata.go -prefix migrations/capitan -pkg migrations migrations/capitan

migrate-create-capitan:
	@migrate create -ext sql -dir migrations/capitan -tz "Asia/Taipei" -seq -digits 4 'capitan'
