FROM nginx:alpine

RUN apk add --no-cache openrc avahi

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
EXPOSE 80