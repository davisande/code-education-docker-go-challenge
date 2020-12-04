FROM golang:1.15.5

WORKDIR /go/src/fullcycle

COPY . .

RUN GOOS=linux go build

ENTRYPOINT [ "go" , "run", "HelloService.go" ]