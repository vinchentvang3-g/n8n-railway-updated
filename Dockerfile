FROM n8nio/n8n:latest

# Railway keeps secrets in service Variables. This image only adjusts runtime
# permissions so n8n can write its config to the mounted volume.
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
