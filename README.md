## Static code analyzer for golang

## Source:
https://github.com/securego/gosec/

## Dockerfile
https://github.com/c1982/gosec/blob/master/Dockerfile

## Basic Usage:
docker run -it -v $PROJECT_DIR:/go/src/$NAME --workdir /go/src/$NAME c1982/gosec ./...

## HTML output:
docker run --name gosec -v $PROJECT_DIR:/go/src/$NAME --workdir /go/src/$NAME c1982/gosec -exclude=G104 -fmt=html -out=report.html ./...