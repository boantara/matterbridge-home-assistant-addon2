# Base image
FROM node:22-slim

# Set working directory
WORKDIR /app

# Cache bust: change this value to force a fresh install
ARG CACHEBUST=20260129

# Clean the cache to force the latest version of matterbridge and all the plugins
RUN echo "Cache bust: $CACHEBUST" && npm cache clean -f

# Copy the run script to the container
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

# Start the application using the run.sh script
CMD [ "/app/run.sh" ]
