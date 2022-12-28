docker pull prom/node-exporter


docker container stop Node_exporter 
docker container rm   Node_exporter



docker run -d \
  -p 9100:9100 \
  -v "/:/host:ro,rslave" \
  --name Node_exporter   \
  --restart=always \
  --net="host" \
  --pid="host" \
  quay.io/prometheus/node-exporter:latest \
  --path.rootfs=/host
