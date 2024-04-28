FROM nginx:alpine

RUN mkdir -p /var/www

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY dist/ /var/www/pc/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
