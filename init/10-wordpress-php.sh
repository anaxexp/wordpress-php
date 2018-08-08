#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

_gotpl() {
    if [[ -f "/etc/gotpl/$1" ]]; then
        gotpl "/etc/gotpl/$1" > "$2"
    fi
}

# Remove generic environment config from anaxexp/php
rm -f "${CONF_DIR}/anaxexp.settings.php"

if [[ -n "${ANAXEXP_APP_NAME}" && -n "${WP_VERSION}" ]]; then
    _gotpl "anaxexp.wp${WP_VERSION}-config.php.tmpl" "${CONF_DIR}/anaxexp.wp-config.php"
    _gotpl "wp-config.php.tmpl" "${CONF_DIR}/wp-config.php"
fi
