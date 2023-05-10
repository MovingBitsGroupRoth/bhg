where:
	pwd

build:
	go build -o bin/dial ch-2/dial/main.go

compile:
	GOOS=linux GOARCH=386 go build -o bin/dial ch-2/dial/main.go

execute:
	bin/dial


all: where compile execute