VERSION := 1.1.0

build:
	go build -ldflags="-X main.VERSION=v${VERSION}-$(shell date +%Y-%m-%d)" -o ../bin/setup setup.go

test:
	go test
