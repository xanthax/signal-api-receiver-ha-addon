#!/usr/bin/env sh

echo "Starting Signal API Receiver..."

if [ -z "$PORT" ]; then
  PORT=8105
fi

exec /app/signal-api-receiver serve \
  --signal-api-url "$SIGNAL_API_URL" \
  --server-addr ":$PORT"
