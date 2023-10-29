FROM ubuntu:22.04 AS base

RUN apt-get update && \
    apt-get -y install \
    ca-certificates \
    build-essential \
    git \
    wget \
    texinfo

FROM base AS builder

RUN git clone --depth 1 https://github.com/richfelker/musl-cross-make.git /musl-cross-make
WORKDIR /musl-cross-make

COPY config.mak .
RUN make install

FROM base AS compiler

COPY --from=builder /opt/cross/armv6 /opt/cross/armv6
ENV PATH=/opt/cross/armv6/bin:${PATH}
