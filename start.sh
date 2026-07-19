#!/bin/sh
# Health page on 8080 (Render detects this first and health checks it)
python3 /lavalink/health.py &

# Lavalink on 2333
java -XX:TieredStopAtLevel=1 -jar /lavalink/Lavalink.jar