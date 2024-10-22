FROM nginxinc/nginx-unprivileged  

COPY ./angular/dist/angular-starter/browser/ /usr/share/nginx/html
COPY ./nginx.conf  /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
