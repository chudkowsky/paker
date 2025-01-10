# Use Fedora as the base image
FROM fedora:latest

# Update packages and install basic tools
RUN dnf update -y && \
    dnf install -y bash coreutils && \
    dnf clean all && \
    dnf install git clang -y

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y

# Set working directory
WORKDIR /workspace

# Set the default entry point to bash
ENTRYPOINT ["/bin/bash"]
