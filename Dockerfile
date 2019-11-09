FROM java:8
MAINTAINER hecenjie <cenjie.ho@outlook.com>

ADD ./target/experiment-config-server.jar /app/
# CMD ["java -jar /app/experiment-config-server.jar --spring.security.user.name=$username --spring.security.user.password=$password"]

# HEALTHCHECK --interval=30s --timeout=30s CMD curl -f http://localhost:8888/actuator/health || exit 1

ENV username=""
ENV password=""
ENV config_location=""
ENV eureka_host=""

EXPOSE 8888
ENTRYPOINT ["sh","-c","java -jar /app/experiment-config-server.jar \
--spring.security.user.name=$username --spring.security.user.password=$password \
--spring.cloud.config.server.native.searchlocations=$config_location \
--eureka.client.serviceUrl.defaultZone=$eureka_host"]