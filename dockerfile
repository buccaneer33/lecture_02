FROM ubuntu:latest
MAINTAINER buccaneer <buccaneer33@inbox.ru>
RUN \
 # add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/www/html
WORKDIR /var/www/html
CMD ["nginx"]
EXPOSE 30000