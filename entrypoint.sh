#!/bin/bash
echo "[startup] Importing ENV file..."
. ./envFile

echo "[startup] Deleting ENV file..."
./self-deleting.sh

echo "[startup] Starting application..."
exec java -jar /app.jar
