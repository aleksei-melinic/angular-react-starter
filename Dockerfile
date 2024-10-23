FROM nginxinc/nginx-unprivileged:1.27

COPY ./angular/dist/angular-starter/browser/ /usr/share/nginx/html
COPY ./nginx.conf  /etc/nginx/conf.d/default.conf

EXPOSE 8080

USER nginx

CMD ["nginx", "-g", "daemon off;"]
