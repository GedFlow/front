FROM nginx:latest
EXPOSE 80
EXPOSE 8080
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD *.html /usr/share/nginx/html/
ADD default.conf /etc/nginx/conf.d/
CMD nginx -g 'daemon off;'