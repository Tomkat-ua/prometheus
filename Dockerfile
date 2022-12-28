FROM  prom/prometheus:latest 

COPY ./prometheus.yml  /prometheus/prometheus.yml

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV TZ=Europe/Kiev

ENTRYPOINT ["/bin/prometheus"]

#CMD  ["-config.file=/etc/prometheus/prometheus.yml --storage.tsdb.path=/prometheus --web.console.libraries=/usr/share/prometheus/console_libraries --web.console.templates=/usr/share/prometheus/consoles"]
#CMD ["--web.enable-admin-api","--storage.tsdb.retention.time=90d"]
CMD ["--storage.tsdb.retention.time=90d","--storage.tsdb.retention.size=10GiB","--web.enable-admin-api"]

