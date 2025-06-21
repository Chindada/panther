ARG PG_MAJOR_VERSION=17
ARG PG_MINOR_VERSION=5
ARG NGINX_VERSION=1.28.0
ARG POSTGRES_EXPORTER_VERSION=v0.17.1
ARG BUILD_DATE=20250621

FROM prometheuscommunity/postgres-exporter:${POSTGRES_EXPORTER_VERSION} AS postgres-exporter

FROM postgres:${PG_MAJOR_VERSION}.${PG_MINOR_VERSION}-bookworm
ARG NGINX_VERSION
ARG BUILD_DATE
ARG PG_MAJOR_VERSION
ARG PG_MINOR_VERSION
ENV TZ=Asia/Taipei \
    ROOT_PATH=/usr/share/app
RUN mkdir -p ${ROOT_PATH} \
    && touch ${ROOT_PATH}/${BUILD_DATE}
COPY --from=postgres-exporter /bin/postgres_exporter /usr/lib/postgresql/${PG_MAJOR_VERSION}/bin/postgres_exporter
RUN apt update -y \
    && apt install -y --no-install-recommends \
    ca-certificates \
    curl \
    dumb-init \
    gcc \
    libpcre3-dev \
    libssl-dev \
    make \
    netcat-openbsd \
    ntp \
    tzdata \
    wget \
    zlib1g-dev \
    && update-ca-certificates -f \
    && service ntpsec stop \
    && curl -fSL https://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz --output nginx-${NGINX_VERSION}.tar.gz \
    && tar zxvf nginx-${NGINX_VERSION}.tar.gz \
    && cd nginx-${NGINX_VERSION} \
    && ./configure --prefix=${ROOT_PATH}/proxy --with-http_ssl_module --sbin-path=sbin/proxy \
    && make install \
    && rm -rf nginx-${NGINX_VERSION}.tar.gz nginx-${NGINX_VERSION} \
    && apt autoremove -y \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
