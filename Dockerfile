FROM man:5000/alpine:3.2

RUN apk update && apk add git=2.4.1-r0 mercurial=3.4-r0 bzr=2.6.0-r1 go=1.4.2-r0 && rm -rf /var/cache/apk/*

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

# Install go tools
COPY gopath /gopath
RUN go get -v github.com/nitrous-io/goop
RUN go get -v github.com/skelterjohn/rerun
