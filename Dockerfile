FROM golang:1.18.1-alpine

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go clean --modcache
RUN go mod download
RUN go build -o main .
CMD ["/app/main"]
