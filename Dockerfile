FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
RUN apk add --no-cache curl
RUN curl -L "https://raw.githubusercontent.com/Sergiovi11/etdavidg/main/index.html" -o /usr/share/nginx/html/index.html
RUN curl -L "https://raw.githubusercontent.com/Sergiovi11/etdavidg/main/legal.html" -o /usr/share/nginx/html/legal.html
RUN echo 'server { listen 80; root /usr/share/nginx/html; index index.html; location / { try_files $uri $uri/ /index.html; } }' > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
