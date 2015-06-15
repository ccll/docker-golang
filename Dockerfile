FROM kiasaki/alpine-golang:1.4

RUN go get -v github.com/nitrous-io/goop
RUN go get -v github.com/ccll/rerun
