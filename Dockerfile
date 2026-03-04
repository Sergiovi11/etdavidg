FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY legal.html /usr/share/nginx/html/legal.html
EXPOSE 80
