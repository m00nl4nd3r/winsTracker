FROM nginx:alpine

COPY wins-tracker-v3.0.html /usr/share/nginx/html/index.html

EXPOSE 80
