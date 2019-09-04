FROM alpine:3.10.2

RUN apk add --update --verbose --no-cache grep bash curl=7.65.1-r0
RUN rm -rf /var/cache/apk/* /tmp/* /sbin/halt /sbin/poweroff /sbin/reboot

ENTRYPOINT ["/usr/bin/curl"]
