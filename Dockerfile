FROM golang:1.18-alpine3.15

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/bin/sleep 9000000"]