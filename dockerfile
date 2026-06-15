FROM nginx:stable

COPY register-dns.sh /docker-entrypoint.d/10-register-dns.sh

RUN chmod +x /docker-entrypoint.d/10-register-dns.sh
EXPOSE 80