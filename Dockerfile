FROM golang:1.24.0

WORKDIR /app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint12-final

CMD ["/sprint12-final"]