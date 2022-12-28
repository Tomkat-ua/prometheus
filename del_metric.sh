
url='http://192.168.1.7:9090/api/v1/admin/tsdb/delete_series?match[]='$1

curl -X POST -g $url

#&match[]={region="mistake"}'


