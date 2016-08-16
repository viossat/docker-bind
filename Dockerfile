FROM alpine:3.4
MAINTAINER Mathieu Viossat <mathieu@viossat.fr>

RUN apk add --no-cache bind \
	&& rm -rf /etc/bind/* \
	&& rm -rf /var/bind

VOLUME /etc/bind

EXPOSE 53 53/udp

CMD ["named", "-g", "-u", "named"]
