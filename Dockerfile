FROM kalilinux/kali-rolling

# Update and install Kali default tools
RUN apt-get update && apt-get install -y \
    kali-linux-default \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /root

# Default command is bash shell
CMD ["/bin/bash"]
