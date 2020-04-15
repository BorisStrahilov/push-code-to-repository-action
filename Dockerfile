FROM alpine:3.10

RUN apk update && apk upgrade && \
    apk add --no-cache git openssh

COPY push.sh /push.sh
COPY setup-ssh.sh /setup-ssh.sh

ENTRYPOINT ["/push.sh"]
