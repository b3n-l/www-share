#!/bin/sh

# rm /etc/nginx/conf.d/default.conf || :
# envsubst < auth.conf > /etc/nginx/conf.d/auth.conf
# envsubst < auth.htpasswd > /etc/nginx/auth.htpasswd
htpasswd -cb /etc/nginx/auth.htpasswd docker $PASSWORD
nginx -g "daemon off;"
