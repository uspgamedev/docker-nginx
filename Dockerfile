FROM nginx
ADD default.conf /etc/nginx/conf.d/default.template
ADD ssl.conf /etc/nginx/shared/
ADD proxy.conf /etc/nginx/shared/
ADD letsencrypt.conf /etc/nginx/shared/
ADD htpasswd /etc/nginx/shared/
CMD /bin/bash -c "envsubst \\\${SERVER_HOSTNAME} < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
