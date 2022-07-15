FROM    k0d3r1s/alpine:unstable

USER    root

RUN     \
        set -eux \
&&      apk add --update --no-cache --no-progress --upgrade -X http://dl-cdn.alpinelinux.org/alpine/edge/testing git git-subtree jq \
&&      rm -rf /var/cache/*

COPY    entrypoint.sh /entrypoint.sh

WORKDIR /tmp

USER    vairogs

ENTRYPOINT ["/entrypoint.sh"]
