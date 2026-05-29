FROM n8nio/n8n:latest

USER root

# Railway mounts the volume at runtime, so permissions must be adjusted after
# the mount exists. Secrets stay in Railway Variables.
ENTRYPOINT ["sh", "-c", "mkdir -p /home/node/.n8n && chmod -R 777 /home/node/.n8n && exec n8n start"]
