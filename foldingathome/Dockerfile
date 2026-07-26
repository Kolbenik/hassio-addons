FROM lscr.io/linuxserver/foldingathome:latest

# Tool installieren, um die Home Assistant Optionen lesen zu können
RUN apt-get update && apt-get install -y jq && rm -rf /var/lib/apt/lists/*

# Unser lokales Start-Skript in den Container kopieren und ausführbar machen
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Das Start-Skript ausführen, bevor das eigentliche Image startet
ENTRYPOINT ["/run.sh"]
