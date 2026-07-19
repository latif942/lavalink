FROM eclipse-temurin:17-jre-alpine

RUN apk add --no-cache libgcc

WORKDIR /lavalink

ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar Lavalink.jar

COPY application.yml application.yml

RUN mkdir -p plugins logs

EXPOSE 8080

CMD ["java", "-jar", "Lavalink.jar"]