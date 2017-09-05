# viossat/bind

BIND is open source software that implements the Domain Name System (DNS) protocols for the Internet.

- Alpine-based, 9 MB
- TCP/UDP port 53 exposed
- basic configuration

## Usage

```bash
docker run -d -p 53:53 -p 53:53/udp -v /my/named.conf.local:/etc/bind/named.conf.local -v /my/zones:/var/cache/bind viossat/bind
```
