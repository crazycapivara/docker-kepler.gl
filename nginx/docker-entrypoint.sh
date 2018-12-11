#!/bin/sh

NGINX_PUBLIC=/usr/share/nginx/html

./node_modules/.bin/webpack --progress --output-path  $NGINX_PUBLIC --output-filename bundle.js
 cp index.html $NGINX_PUBLIC

exec "$@"

