FROM openjdk:8
LABEL maintainer="kadan.li kadanstudio <kadan1984@126.com>"
VOLUME ["/logsFolder"]
# delete all the apt list files since they're big and get stale quickly
RUN rm -rf /var/lib/apt/lists/*
COPY ../target/lb-service-1.0.jar /root/log.jar
COPY startup.sh /root/startup.sh
EXPOSE 8080
CMD ["sh","/root/startup.sh"]