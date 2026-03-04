FROM nginx:alpine
RUN apk add --no-cache git
RUN git clone https://github.com/Sergiovi11/etdavidg.git /tmp/site
RUN rm -rf /usr/share/nginx/html/*
RUN cp /tmp/site/index.html /usr/share/nginx/html/
RUN cp /tmp/site/legal.html /usr/share/nginx/html/
RUN cp /tmp/site/logo.png /usr/share/nginx/html/
RUN cp /tmp/site/foto1.jpg /usr/share/nginx/html/
RUN cp /tmp/site/foto2.jpg /usr/share/nginx/html/
RUN cp /tmp/site/foto3.jpg /usr/share/nginx/html/
RUN cp /tmp/site/foto4.jpg /usr/share/nginx/html/
RUN cp /tmp/site/foto5.jpg /usr/share/nginx/html/
RUN cp /tmp/site/foto6.jpg /usr/share/nginx/html/
RUN cp /tmp/site/foto7.jpg /usr/share/nginx/html/
RUN echo 'server { listen 80; root /usr/share/nginx/html; index index.html; location / { try_files $uri $uri/ /index.html; } }' > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
