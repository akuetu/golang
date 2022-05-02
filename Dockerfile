FROM golang:1.18.1-alpine
# install git
RUN apk update && apk add git
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go clean --modcache
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY *.go ./
RUN go build -o main .
EXPOSE 8080
CMD ["/app/main"]
