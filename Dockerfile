FROM golang:alpine
LABEL maintainer="Dmitry Rodin <madiedinro@gmail.com>"

ENV HOST=0.0.0.0
ENV PORT=8080

EXPOSE ${PORT}

#cachebust
ARG RELEASE=master
WORKDIR /go/src/ga-beacon
COPY . .

# RUN go build
RUN go install
CMD ["ga-beacon"]
