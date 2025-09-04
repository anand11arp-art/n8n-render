# Dockerfile (put in repo and deploy using Render's Docker runtime
# Start from the official n8n image
FROM n8nio/n8n:1.108.2

# Tell n8n to install the upload post node on startup
ENV N8N_COMMUNITY_PACKAGES=n8n-nodes-upload-post
