FROM debian:stable
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Install software
RUN apt update && \
    apt install --no-install-recommends -y \
        python3-paho-mqtt \
        python3-requests && \
    rm -rf /var/lib/apt/lists/*

# Copy files into place
COPY cable_stats /cable_stats

# Set the entrypoint
ENTRYPOINT ["/cable_stats"]
