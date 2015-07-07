FROM kiasaki/alpine-golang:1.4

# Install inotify-tools
RUN apk update
RUN apk add inotify-tools=3.14-r1
RUN rm -rf /var/cache/apk/*

# Install go tools
RUN go get -v github.com/nitrous-io/goop
RUN go get -v github.com/skelterjohn/rerun
