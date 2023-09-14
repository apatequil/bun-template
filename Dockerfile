FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install git
# Unzip is required for bun
RUN apt-get -y install curl unzip
# Install bun and setup environment
RUN curl -fsSL https://bun.sh/install | bash
ENV BUN_INSTALL=${HOME}/.bun
ENV PATH=${BUN_INSTALL}/bin:$PATH
ENV HOME=/root
WORKDIR /app
COPY . .
EXPOSE 3000