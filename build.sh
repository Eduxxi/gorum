#!/bin/bash

# linux amd64
GOOS=linux GOARCH=amd64 go build -o bin/gorum-linux-amd64 cmd/gorum/gorum.go

# linux arm64
GOOS=linux GOARCH=arm64 go build -o bin/gorum-linux-arm64 cmd/gorum/gorum.go

# linux armv6
GOOS=linux GOARCH=arm GOARM=6 go build -o bin/gorum-linux-armv6 cmd/gorum/gorum.go

# linux armv7
GOOS=linux GOARCH=arm GOARM=7 go build -o bin/gorum-linux-armv7 cmd/gorum/gorum.go

# linux 386
GOOS=linux GOARCH=386 go build -o bin/gorum-linux-386 cmd/gorum/gorum.go

# build web-app
cd web
ng build --prod
cd ..

# archive resources
tar cfvz bin/resources.tar.gz assets web/dist