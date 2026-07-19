FROM eclipse-temurin:17-jre-alpine

WORKDIR /lavalink

# Download latest Lavalink jar
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar Lavalink.jar

# Copy config
COPY application.yml application.yml

# Create plugins dir (auto-downloaded on first run)
RUN mkdir -p plugins logs

EXPOSE 2333

ENTRYPOINT ["java", "-jar", "Lavalink.jar"]