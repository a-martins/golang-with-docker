FROM golang:latest as builder

RUN mkdir -p /go/src/fullcycleapp

WORKDIR /go/src/fullcycleapp

COPY /src/main.go /go/src/fullcycleapp

RUN go mod init

ENV cgo_enabled=0
ENV goos=linux

RUN go build  -ldflags '-w -s' -a -installsuffix cgo -o fullcycleapp .


FROM scratch
WORKDIR /go/src/fullcycleapp
COPY --from=builder /go/src/fullcycleapp .
CMD ["./fullcycleapp"]