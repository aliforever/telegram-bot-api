FROM ubuntu:24.04

# Install runtime dependencies required by the compiled telegram-bot-api binary
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    libssl3 \
    zlib1g \
    && rm -rf /var/lib/apt/lists/*

# Copy the compiled binary from the host
COPY build/telegram-bot-api /usr/local/bin/telegram-bot-api

# Create the working directory for the API server
RUN mkdir -p /var/lib/telegram-bot-api
WORKDIR /var/lib/telegram-bot-api

# Expose the default HTTP port
EXPOSE 8081

# Set the entrypoint to the API server binary
ENTRYPOINT ["/usr/local/bin/telegram-bot-api"]
