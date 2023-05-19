where:
	pwd

build:
	go build -o debug/dial ch-2/dial/main.go

compile:
	GOOS=linux GOARCH=386 go build -o compile/dial ch-2/dial/main.go

prod:
	echo "Disable DWARF debugging information; omit Symbol Table; reduce length of file paths stored in the file"
	go build -ldflags "-w -s" -trimpath -o bin/dial ch-2/dial/main.go

execute:
	bin/dial


all: where compile execute