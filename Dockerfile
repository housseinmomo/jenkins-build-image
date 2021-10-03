FROM docker2021repos/nginx:latest

RUN sed -i 's/nginx/wano/g' /usr/share/nginx/html/index.html

EXPOSE 80
