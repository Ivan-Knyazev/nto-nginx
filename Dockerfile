FROM nginx

COPY ssl/cer.pem /cer.pem
COPY ssl/key.pem /key.pem

COPY nginx.conf /etc/nginx/nginx.conf
