# viossat/bind

BIND is open source software that implements the Domain Name System (DNS) protocols for the Internet.

- Alpine-based, 8.5 MB
- UDP port 53 exposed
- without default configuration

## Usage

```bash
docker run -d -p 53:53 -p 53:53/udp -v /my/bind/conf:/etc/bind viossat/bind
```
