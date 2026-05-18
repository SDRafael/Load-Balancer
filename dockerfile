FROM nginx:stable

# Install systemd and avahi dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        systemd \
        systemd-sysv \
        avahi-daemon \
        avahi-utils \
        dbus \
        libnss-mdns \
        && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/dbus/

RUN systemctl enable dbus.service && \
    systemctl enable avahi-daemon.service
    
COPY ./00-init-avahi.sh /docker-entrypoint.d/00-init-avahi.sh

RUN chmod +x /docker-entrypoint.d/00-init-avahi.sh
EXPOSE 80 5353/udp 