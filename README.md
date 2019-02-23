## Gosec
Gosec static code analyzer for golang. Please follow [this link for more information](https://github.com/securego/gosec/)

### Motivation
Gosec offical image 114MB It's too large for CI environment. This iron based image is just 12MB.

### Dockerfile
https://github.com/c1982/gosec/blob/master/Dockerfile

## Usages

Run quicly

```bash
docker run -it -v $PROJECT_DIR:/go/src/$NAME --workdir /go/src/$NAME c1982/gosec ./...
```

Generate HTML report for your project

```bash
docker run --name gosec -v $PROJECT_DIR:/go/src/$NAME --workdir /go/src/$NAME c1982/gosec -exclude=G104 -fmt=html -out=report.html ./...
```