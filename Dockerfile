FROM jwilder/nginx-proxy:alpine
RUN { \
	echo 'client_max_body_size 512m;'; \
} > /etc/nginx/conf.d/custom.conf
