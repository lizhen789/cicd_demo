FROM java:8u111

ADD target/*.jar app.jar

EXPOSE 8880

# Ubuntu 时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENTRYPOINT ["java",  "-jar", "/app.jar"]
