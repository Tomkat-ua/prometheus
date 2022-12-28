volume=prometheus
container=Prometheus
img=tomkat/prometheus

docker build --pull -t  $img  .

#docker pull prom/prometheus

docker container stop $container
docker container rm   $container

docker run -d -t  -p 9090:9090  \
		  --net net_18  --ip 172.18.0.4 \
                  --restart=always \
                  --name $container  \
                  -v $volume:/prometheus \
                  $img 



