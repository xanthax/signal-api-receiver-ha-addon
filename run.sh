#!/usr/bin/env sh
set -e

echo "Starting Signal API Receiver"

exec /app/signal-api-receiver serve \
  --signal-api-url "$SIGNAL_API_URL" \
  --server-addr ":$LISTEN_PORT"
