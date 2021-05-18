ARG DOCKER_ARCH

FROM ${DOCKER_ARCH:-amd64}/debian
ARG TAG
ARG GOARCH
ENV GOARCH ${GOARCH}

WORKDIR /app
COPY s3-benchmark /app/s3-benchmark
COPY entrypoint /entrypoint
ENTRYPOINT ["/entrypoint"]
