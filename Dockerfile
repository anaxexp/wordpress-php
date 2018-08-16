ARG BASE_IMAGE_TAG

FROM anaxexp/php:${BASE_IMAGE_TAG}

USER root

RUN set -ex; \
    \
    su-exec anaxexp composer global require wp-cli/wp-cli; \
    su-exec anaxexp composer clear-cache; \
    su-exec anaxexp curl -sSL https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp; \
    su-exec anaxexp chmod +x /usr/local/bin/wp; \
    \
    if [[ -z "${PHP_DEV}" ]]; then \
        echo "$(cat /etc/sudoers.d/anaxexp), /usr/local/bin/init_wordpress" > /etc/sudoers.d/anaxexp; \
    fi; \
    \
    mv /usr/local/bin/actions.mk /usr/local/bin/php.mk

USER anaxexp

COPY templates /etc/gotpl/
COPY bin /usr/local/bin
COPY init /docker-entrypoint-init.d/