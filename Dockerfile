# The binary is already built and restored from MinIO (see the
# "Restore Artefact and Publish Image" stage) before this Dockerfile
# runs - no need to compile it again inside the image.

FROM alpine:3.20
RUN adduser -D -g '' appuser
WORKDIR /app
COPY go-hello-world .
RUN chmod +x go-hello-world
USER appuser
EXPOSE 8080
ENTRYPOINT ["./go-hello-world"]