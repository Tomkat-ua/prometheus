
./build.sh
#docker pull prom/prometheus

docker container stop Prometheus
docker container rm   Prometheus


docker run -d -t  -p 9090:9090   \
		  --restart=always \
		  -v  prometheus:/prometheus \
		  --name Prometheus   \
		  tomkat/prometheus 




#		  --web.enable-admin-api \


