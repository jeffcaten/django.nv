#{
#  "backend":{
#    "consul":{
#      "address":"${LOCAL_IP}:9500",
#      "advertise_addr":"http://${LOCAL_IP}", 
#      "path":"vault/"
#    }
#  },
#  "listener":{
#    "tcp":{
#      "address":"0.0.0.0:8200",
#      "tls_disable":1
#    }
#  }
#}
