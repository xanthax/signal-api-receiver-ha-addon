FROM golang:1.21-alpine AS builder

WORKDIR /build

# Download and compile signal-api-receiver
RUN apk add --no-cache git
RUN git clone https://github.com/kalbasit/signal-api-receiver.git .
RUN go build -o signal-api-receiver .

# Final image
FROM alpine:latest
WORKDIR /app
COPY --from=builder /build/signal-api-receiver /app/
COPY run.sh /app/
RUN chmod +x /app/run.sh

EXPOSE 8105
CMD [ "/app/run.sh" ]
