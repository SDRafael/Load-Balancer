FROM alpine:latest

RUN apk add --no-cache dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf
COPY hosts /dnsdata/hosts

CMD ["dnsmasq","-k"]