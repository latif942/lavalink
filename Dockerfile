FROM eclipse-temurin:17-jre-alpine

# Install Python for health page + libgcc for native libs
RUN apk add --no-cache python3 libgcc

WORKDIR /lavalink

# Download Lavalink
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar Lavalink.jar

COPY application.yml application.yml
COPY health.py health.py
COPY start.sh start.sh

RUN mkdir -p plugins logs
RUN chmod +x start.sh

EXPOSE 2333

CMD ["sh", "start.sh"]