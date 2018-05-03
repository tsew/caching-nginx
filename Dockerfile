FROM nginx:stable

COPY files/ /

VOLUME /etc/nginx
VOLUME /var/nginx-cache

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
