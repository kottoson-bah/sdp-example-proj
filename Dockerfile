FROM nginx

COPY webpage.html /usr/share/nginx/html/index.html
COPY container_entrypoint.sh /container_entrypoint.sh

USER root
RUN chgrp -R /var/cache/nginx && \
    chmod -R g=u /var/cache/nginx && \
    chgrp -R 0 /var/run && \
    chmod -R g-u /var/run && \
    chmod g-u /etc/passwd
EXPOSE 8080

CMD ["sh", "/container_entrypoint.sh"]
USER nexus
