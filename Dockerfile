FROM nginx:1.17

COPY /default.conf  /etc/nginx/conf.d/default.conf
COPY /static       /usr/share/nginx/html

# don't actually do this with your static files
RUN chmod -R 777 /usr/share/nginx/html
