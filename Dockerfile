# Собирает образ для контейнера с сервисом получения времени.
FROM golang:1.9

WORKDIR /

EXPOSE 8080
COPY *.go .

RUN go build

ENTRYPOINT [ "/timeservice.go" ]

