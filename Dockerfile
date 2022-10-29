FROM nginx:latest
EXPOSE 80
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN apt update && apt install wget
ADD *.html /usr/share/nginx/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf
CMD nginx -g 'daemon off;'