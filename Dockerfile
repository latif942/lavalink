FROM eclipse-temurin:17-jre-alpine

RUN apk add --no-cache libgcc python3

WORKDIR /lavalink

ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar Lavalink.jar

COPY application.yml application.yml
COPY health.py health.py
COPY start.sh start.sh

RUN mkdir -p plugins logs && chmod +x start.sh

EXPOSE 8080

CMD ["sh", "start.sh"]