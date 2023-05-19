where:
	pwd

build:
	go build -o debug/dial ch-2/dial/main.go

compile:
	GOOS=linux GOARCH=386 go build -o compile/dial ch-2/dial/main.go

prod:
	@printf "\033[32mDisable DWARF debugging information; omit Symbol Table; remove all file system paths, to improve build reproducibility\033[37m\n"
	go build -ldflags "-w -s" -trimpath -o bin/dial ch-2/dial/main.go

execute:
	bin/dial

all: where compile execute