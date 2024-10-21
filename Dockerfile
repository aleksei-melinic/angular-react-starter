FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ./angular/dist/angular-starter/browser/ /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx.conf  /etc/nginx/conf.d/default.conf

EXPOSE 80

RUN chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid

USER nginx

CMD ["nginx", "-g", "daemon off;"]
