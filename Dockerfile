FROM golang:1.11.5-alpine3.9 as builder

RUN apk add git build-base upx
RUN go get -ldflags="-s -w" github.com/securego/gosec/cmd/gosec/...

RUN upx /go/bin/gosec

FROM iron/go

COPY --from=builder /go/bin/gosec /usr/local/bin
WORKDIR  /usr/local/bin
ENTRYPOINT ["/usr/local/bin/gosec" ]
