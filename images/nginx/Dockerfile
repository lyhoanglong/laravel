FROM phusion/baseimage
MAINTAINER Long Ly Hoang <longly@seespaec.co>

CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y python-software-properties
RUN add-apt-repository ppa:nginx/stable
RUN apt-get update && apt-get install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/appstore-error.log

RUN mkdir -p /etc/service/nginx
RUN mkdir -p /var/nginx/cache
ADD start.sh /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run

EXPOSE 80

RUN apt-get clean && rm -rf /var/list/apt/lists/* /tmp/* /var/tmp/*