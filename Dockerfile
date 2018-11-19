FROM nginx

COPY webpage.html /usr/share/nginx/html/index.html
ENTRYPOINT ["sh", "container_entrypoint.sh"]
