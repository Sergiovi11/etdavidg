FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html
COPY legal.html /usr/share/nginx/html/legal.html
COPY logo.png /usr/share/nginx/html/logo.png
COPY foto1.jpg /usr/share/nginx/html/foto1.jpg
COPY foto2.jpg /usr/share/nginx/html/foto2.jpg
COPY foto3.jpg /usr/share/nginx/html/foto3.jpg
COPY foto4.jpg /usr/share/nginx/html/foto4.jpg
COPY foto5.jpg /usr/share/nginx/html/foto5.jpg
COPY foto6.jpg /usr/share/nginx/html/foto6.jpg
COPY foto7.jpg /usr/share/nginx/html/foto7.jpg
RUN echo 'server { listen 80; root /usr/share/nginx/html; index index.html; location / { try_files $uri $uri/ /index.html; } }' > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
