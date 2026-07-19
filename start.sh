#!/bin/sh
# Start health page in background on port 8080
python3 /lavalink/health.py &

# Start Lavalink on port 2333
java -jar /lavalink/Lavalink.jar