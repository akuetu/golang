hello:
	echo "hello from MAKE"

build:
	go build -o bin/main main.go

run:
	go run main.go

all: hello build run

docker:
	sudo docker run  -p 8080:8080 go-app2