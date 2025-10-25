FROM golang:1.24.2

WORKDIR /app

COPY . .

RUN go mod tidy 

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /main main.go parcel.go

CMD ["/main"]