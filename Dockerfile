FROM debian:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    bash \
    cowsay \
    fortune-mod \
    netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*

# Add /usr/games to PATH (fortune usually lives here)
ENV PATH="/usr/games:${PATH}"

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
