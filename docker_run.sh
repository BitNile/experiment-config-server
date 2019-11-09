docker run -d -e username="root" \
-e password="123456" -e config_location="file:/etc" -e eureka_host="http://localhost:8761/eureka/" \
-v /Users/hecenjie/Projects/experiment-config:/etc \
-p 8888:8888 experiment-config-server:v0.9