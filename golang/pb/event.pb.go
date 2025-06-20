// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.36.6
// 	protoc        v6.31.1
// source: system/event.proto

package pb

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	timestamppb "google.golang.org/protobuf/types/known/timestamppb"
	reflect "reflect"
	sync "sync"
	unsafe "unsafe"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type LoginRespCode int32

const (
	LoginRespCode_OK                 LoginRespCode = 0
	LoginRespCode_PASSWORD_INCORRECT LoginRespCode = 1
	LoginRespCode_USER_NOT_FOUND     LoginRespCode = 2
	LoginRespCode_DB_ERROR           LoginRespCode = 3
	LoginRespCode_MFA_FAILED         LoginRespCode = 4
)

// Enum value maps for LoginRespCode.
var (
	LoginRespCode_name = map[int32]string{
		0: "OK",
		1: "PASSWORD_INCORRECT",
		2: "USER_NOT_FOUND",
		3: "DB_ERROR",
		4: "MFA_FAILED",
	}
	LoginRespCode_value = map[string]int32{
		"OK":                 0,
		"PASSWORD_INCORRECT": 1,
		"USER_NOT_FOUND":     2,
		"DB_ERROR":           3,
		"MFA_FAILED":         4,
	}
)

func (x LoginRespCode) Enum() *LoginRespCode {
	p := new(LoginRespCode)
	*p = x
	return p
}

func (x LoginRespCode) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (LoginRespCode) Descriptor() protoreflect.EnumDescriptor {
	return file_system_event_proto_enumTypes[0].Descriptor()
}

func (LoginRespCode) Type() protoreflect.EnumType {
	return &file_system_event_proto_enumTypes[0]
}

func (x LoginRespCode) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use LoginRespCode.Descriptor instead.
func (LoginRespCode) EnumDescriptor() ([]byte, []int) {
	return file_system_event_proto_rawDescGZIP(), []int{0}
}

type LoginEvent struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Id            int64                  `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
	User          *User                  `protobuf:"bytes,2,opt,name=user,proto3" json:"user,omitempty"`
	Ip            string                 `protobuf:"bytes,3,opt,name=ip,proto3" json:"ip,omitempty"`
	RespCode      LoginRespCode          `protobuf:"varint,4,opt,name=resp_code,json=respCode,proto3,enum=system.LoginRespCode" json:"resp_code,omitempty"`
	CreatedAt     *timestamppb.Timestamp `protobuf:"bytes,5,opt,name=created_at,json=createdAt,proto3" json:"created_at,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *LoginEvent) Reset() {
	*x = LoginEvent{}
	mi := &file_system_event_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *LoginEvent) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*LoginEvent) ProtoMessage() {}

func (x *LoginEvent) ProtoReflect() protoreflect.Message {
	mi := &file_system_event_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use LoginEvent.ProtoReflect.Descriptor instead.
func (*LoginEvent) Descriptor() ([]byte, []int) {
	return file_system_event_proto_rawDescGZIP(), []int{0}
}

func (x *LoginEvent) GetId() int64 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *LoginEvent) GetUser() *User {
	if x != nil {
		return x.User
	}
	return nil
}

func (x *LoginEvent) GetIp() string {
	if x != nil {
		return x.Ip
	}
	return ""
}

func (x *LoginEvent) GetRespCode() LoginRespCode {
	if x != nil {
		return x.RespCode
	}
	return LoginRespCode_OK
}

func (x *LoginEvent) GetCreatedAt() *timestamppb.Timestamp {
	if x != nil {
		return x.CreatedAt
	}
	return nil
}

type LoginEventList struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	List          []*LoginEvent          `protobuf:"bytes,1,rep,name=list,proto3" json:"list,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *LoginEventList) Reset() {
	*x = LoginEventList{}
	mi := &file_system_event_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *LoginEventList) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*LoginEventList) ProtoMessage() {}

func (x *LoginEventList) ProtoReflect() protoreflect.Message {
	mi := &file_system_event_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use LoginEventList.ProtoReflect.Descriptor instead.
func (*LoginEventList) Descriptor() ([]byte, []int) {
	return file_system_event_proto_rawDescGZIP(), []int{1}
}

func (x *LoginEventList) GetList() []*LoginEvent {
	if x != nil {
		return x.List
	}
	return nil
}

var File_system_event_proto protoreflect.FileDescriptor

const file_system_event_proto_rawDesc = "" +
	"\n" +
	"\x12system/event.proto\x12\x06system\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x11system/user.proto\"\xbd\x01\n" +
	"\n" +
	"LoginEvent\x12\x0e\n" +
	"\x02id\x18\x01 \x01(\x03R\x02id\x12 \n" +
	"\x04user\x18\x02 \x01(\v2\f.system.UserR\x04user\x12\x0e\n" +
	"\x02ip\x18\x03 \x01(\tR\x02ip\x122\n" +
	"\tresp_code\x18\x04 \x01(\x0e2\x15.system.LoginRespCodeR\brespCode\x129\n" +
	"\n" +
	"created_at\x18\x05 \x01(\v2\x1a.google.protobuf.TimestampR\tcreatedAt\"8\n" +
	"\x0eLoginEventList\x12&\n" +
	"\x04list\x18\x01 \x03(\v2\x12.system.LoginEventR\x04list*a\n" +
	"\rLoginRespCode\x12\x06\n" +
	"\x02OK\x10\x00\x12\x16\n" +
	"\x12PASSWORD_INCORRECT\x10\x01\x12\x12\n" +
	"\x0eUSER_NOT_FOUND\x10\x02\x12\f\n" +
	"\bDB_ERROR\x10\x03\x12\x0e\n" +
	"\n" +
	"MFA_FAILED\x10\x04B\x06Z\x04./pbb\x06proto3"

var (
	file_system_event_proto_rawDescOnce sync.Once
	file_system_event_proto_rawDescData []byte
)

func file_system_event_proto_rawDescGZIP() []byte {
	file_system_event_proto_rawDescOnce.Do(func() {
		file_system_event_proto_rawDescData = protoimpl.X.CompressGZIP(unsafe.Slice(unsafe.StringData(file_system_event_proto_rawDesc), len(file_system_event_proto_rawDesc)))
	})
	return file_system_event_proto_rawDescData
}

var file_system_event_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_system_event_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_system_event_proto_goTypes = []any{
	(LoginRespCode)(0),            // 0: system.LoginRespCode
	(*LoginEvent)(nil),            // 1: system.LoginEvent
	(*LoginEventList)(nil),        // 2: system.LoginEventList
	(*User)(nil),                  // 3: system.User
	(*timestamppb.Timestamp)(nil), // 4: google.protobuf.Timestamp
}
var file_system_event_proto_depIdxs = []int32{
	3, // 0: system.LoginEvent.user:type_name -> system.User
	0, // 1: system.LoginEvent.resp_code:type_name -> system.LoginRespCode
	4, // 2: system.LoginEvent.created_at:type_name -> google.protobuf.Timestamp
	1, // 3: system.LoginEventList.list:type_name -> system.LoginEvent
	4, // [4:4] is the sub-list for method output_type
	4, // [4:4] is the sub-list for method input_type
	4, // [4:4] is the sub-list for extension type_name
	4, // [4:4] is the sub-list for extension extendee
	0, // [0:4] is the sub-list for field type_name
}

func init() { file_system_event_proto_init() }
func file_system_event_proto_init() {
	if File_system_event_proto != nil {
		return
	}
	file_system_user_proto_init()
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: unsafe.Slice(unsafe.StringData(file_system_event_proto_rawDesc), len(file_system_event_proto_rawDesc)),
			NumEnums:      1,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_system_event_proto_goTypes,
		DependencyIndexes: file_system_event_proto_depIdxs,
		EnumInfos:         file_system_event_proto_enumTypes,
		MessageInfos:      file_system_event_proto_msgTypes,
	}.Build()
	File_system_event_proto = out.File
	file_system_event_proto_goTypes = nil
	file_system_event_proto_depIdxs = nil
}
