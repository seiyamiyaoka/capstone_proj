FROM nginx:1.17.3
COPY /html /usr/share/nginx/html
WORKDIR /webserver
