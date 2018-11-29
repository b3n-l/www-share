FROM nginx:alpine

RUN apk add
WORKDIR /opt

RUN apk add --no-cache apache2-utils

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY launch.sh ./

CMD ./launch.sh
