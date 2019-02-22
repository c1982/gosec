FROM golang:1.11.5-alpine3.9 as builder

RUN apk add git build-base && \
    go get github.com/securego/gosec/cmd/gosec/...

FROM iron/go

COPY --from=builder /go/bin/gosec /usr/local/bin
WORKDIR  /usr/local/bin

ENTRYPOINT ["/go/bin/gosec" ]