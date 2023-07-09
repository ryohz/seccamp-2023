FROM golang:bullseye

WORKDIR /app

COPY . .

RUN go build ./cmd/server/main.go

EXPOSE 8080

CMD ["./main"]


