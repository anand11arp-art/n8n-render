# Dockerfile (put in repo and deploy using Render's Docker runtime)
FROM n8nio/n8n:1.108.2

USER root
# install community node(s) into n8n
RUN cd /usr/local/lib/node_modules/n8n && npm install n8n-nodes-upload-post

# switch back to non-root as in the base image
USER node

# default entrypoint from the base image will run n8n

