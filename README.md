# Dockerised Nginx for quick file sharing

I needed a quick and easy way of sharing files locally. After discovering how flakey Python's inbuilt webserver could be, I decided to put together something in Docker.

The whole image is only about 20MB and most of that comes from the Apache2 tools to generate the .htpasswd on the fly

## Usage
To build the container, run `docker build -t benrlewis/www-share .`
To use the container, run the following command
`docker run -it --rm -v /path/to/dir:/etc/nginx/html:ro -e PASSWORD=yourpass  -p 8080:80 benrlewis/www-share`

The container destroys itself when stopped with the `--rm` flag but this can be disabled.
