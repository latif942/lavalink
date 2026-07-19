#!/bin/sh
# Start Lavalink first so Render detects port 8080
java -XX:TieredStopAtLevel=1 -jar /lavalink/Lavalink.jar &

# Wait for Lavalink to start
sleep 50

# Start health check server
python3 /lavalink/health.py