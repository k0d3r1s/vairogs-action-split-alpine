FROM    k0d3r1s/alpine:unstable

RUN     \
        set -eux \
&&      apk upgrade --no-cache --update --no-progress -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
&&      apk add --update --no-cache --no-progress --upgrade -X http://dl-cdn.alpinelinux.org/alpine/edge/testing git git-subtree jq \
&&      rm -rf /var/cache/*

COPY entrypoint.sh /entrypoint.sh

WORKDIR /tmp

ENTRYPOINT ["/entrypoint.sh"]