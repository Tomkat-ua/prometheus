
container=Node_exporter

docker pull prom/node-exporter



docker container stop $container
docker container rm   $container


docker run -d \
  -p 9100:9100 \
  -v "/:/host:ro,rslave" \
  --name $container r   \
  --restart=always \
  --net="host" \
  --pid="host" \
    prom/node-exporter \
  --path.rootfs=/host



#  quay.io/prometheus/node-exporter:latest \
#docker run -d -t \
#    -p 9100:9100 \
#    -v "/proc:/host/proc" \
#    -v "/sys:/host/sys" \
#    -v "/:/rootfs" \
#    --path.procfs /host/proc \
#    --path.sysfs /host/proc \
#    --collector.filesystem.ignored-mount-points "^/(sys|proc|dev|host|etc)($|/)"

#    --net="host" prom/node-exporter \

#docker run -d -t  -p 9100:9100   \
# --restart=always \
# --name Node_exporter   \
#    prom/node-exporter


