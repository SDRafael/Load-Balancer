FROM nginx:stable

RUN apt-get update && \
    apt-get install -y dnsutils

COPY nginx.conf /etc/nginx/nginx.conf

COPY 00-init-dns.sh /docker-entrypoint.d/00-init-dns.sh

RUN chmod +x /docker-entrypoint.d/00-init-dns.sh

EXPOSE 80