# n8n-railway-updated

Railway deploy files for n8n.

## Secrets

Keep all real environment values in Railway Variables. Do not commit real `.env`
files, passwords, tokens, database URLs, or `N8N_ENCRYPTION_KEY` to this repo.

Use `.env.example` only as a checklist of variable names to copy manually into
Railway.

## Deploy

Railway builds this service from `Dockerfile`. The container adjusts the n8n
data directory permissions at startup so the mounted Railway volume can store
n8n config safely.
