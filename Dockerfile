FROM nginx:stable
#FROM centos:latest

#RUN yum -y install epel-release net-tools && yum -y update && yum -y install nginx && \
#    ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

RUN rm -rf /etc/nginx/conf.d/*
COPY files/ /etc/nginx

VOLUME /etc/nginx
VOLUME /var/nginx-cache

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
