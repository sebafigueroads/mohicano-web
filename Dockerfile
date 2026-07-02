FROM nginx:alpine
ARG CACHE_BUST=20260702-01
COPY index.html /usr/share/nginx/html/index.html
COPY v1-heritage.html /usr/share/nginx/html/v1-heritage.html
COPY v2-bold.html /usr/share/nginx/html/v2-bold.html
COPY v3-premium.html /usr/share/nginx/html/v3-premium.html
COPY widgets.html /usr/share/nginx/html/widgets.html
COPY robots.txt /usr/share/nginx/html/robots.txt
COPY assets/ /usr/share/nginx/html/assets/
COPY shared/ /usr/share/nginx/html/shared/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
