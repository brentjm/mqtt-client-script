FROM alpine:3.12.0

COPY publish_status.sh /usr/local/bin/.
RUN apk add --no-cache mosquitto-clients ca-certificates \
    && chmod 655 /usr/local/bin/publish_status.sh

CMD ["/usr/local/bin/publish_status.sh"]
