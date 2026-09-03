FROM nousresearch/hermes-agent:latest

USER root

# Install sudo and GitHub CLI
RUN apt-get update && \
    apt-get install -y sudo gh && \
    rm -rf /var/lib/apt/lists/*

# Grant hermes user passwordless sudo permissions
RUN echo "hermes ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
