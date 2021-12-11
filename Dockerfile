# base image
FROM golang:1.17

# copy content
ADD . /app

# change working directory
WORKDIR /app

# download go dependencies
RUN go mod download

# build go program
RUN go build main.go

# enable application port
EXPOSE 8080

# run main program
CMD ["/app/main"]
