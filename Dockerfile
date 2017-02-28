FROM alpine:3.5
MAINTAINER Mathieu Viossat <mathieu@viossat.fr>

RUN apk add --no-cache bind \
	&& rm -rf /etc/bind /var/bind
COPY config /etc/bind

VOLUME /etc/bind /var/cache/bind

EXPOSE 53 53/udp

CMD ["named", "-g", "-u", "named"]
