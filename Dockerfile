#FROM nginx:stable
FROM centos:latest

RUN yum -y install nginx net-tools

COPY files/ /

VOLUME /etc/nginx
VOLUME /var/nginx-cache

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
