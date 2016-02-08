FROM nginx
ADD default.conf /etc/nginx/conf.d/default.template
CMD /bin/bash -c "envsubst \\\${SERVER_HOSTNAME} < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"