FROM ubuntu:16.04
RUN apt update && apt install -y php7.0 php7.0-curl nginx

#使其日志显示在控制台
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

WORKDIR /app
COPY  . /app
COPY nginx.default  /etc/nginx/sites-available/default
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "'daemon off;'"]