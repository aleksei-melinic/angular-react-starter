# https://github.com/nginxinc/docker-nginx-unprivileged/pkgs/container/nginx-unprivileged/295981060?tag=1.27-alpine
FROM nginxinc/nginx-unprivileged:1.27-alpine

COPY ./angular/dist/angular-starter/browser/ /usr/share/nginx/html
COPY ./nginx.conf  /etc/nginx/nginx.conf

EXPOSE 8080

USER nginx

CMD ["nginx"]
