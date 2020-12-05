FROM golang:1.15.5 AS gobuilder

WORKDIR /go/src/codeeducation

COPY . .

RUN GOOS=linux go build

RUN go build HelloPrinter.go


FROM scratch
COPY --from=gobuilder /go/src/codeeducation/HelloPrinter .
ENTRYPOINT [ "./HelloPrinter" ]