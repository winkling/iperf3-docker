FROM debian:latest

# install binary and remove cache
RUN apt-get update \
    && apt-get install -y iperf3 \
    && rm -rf /var/lib/apt/lists/*

# Expose the default iperf3 server port
EXPOSE 5201

# entrypoint
ENTRYPOINT ["iperf3"]
