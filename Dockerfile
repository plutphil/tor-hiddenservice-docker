FROM alpine:3.14
RUN apk add --no-cache tor
RUN ls -l /etc/tor

RUN cat /etc/tor/torrc.sample
RUN ls -l /var/lib/tor
RUN chown root:root /var/lib/tor
ENTRYPOINT ["tor"]
