docker build --pull -t   tomkat/prometheus .

#docker pull prom/prometheus

docker container stop Prometheus
docker container rm   Prometheus


docker run -d -t  -p 9090:9090  \
                  --restart=always \
                  --name Prometheus \
                  tomkat/prometheus