# Use the official Hugo extended image
FROM hugomods/hugo:exts-0.148.2

# Set the working directory inside the container
WORKDIR /src

# Install git (needed for theme submodules)
RUN apk add --no-cache git

# Copy the Hugo site files
COPY . .

# Create an entrypoint script to handle git submodules at runtime
RUN echo '#!/bin/sh' > /entrypoint.sh && \
    echo 'if [ -d ".git" ] && [ -f ".gitmodules" ]; then' >> /entrypoint.sh && \
    echo '  echo "Initializing git submodules..."' >> /entrypoint.sh && \
    echo '  git submodule update --init --recursive' >> /entrypoint.sh && \
    echo 'fi' >> /entrypoint.sh && \
    echo 'exec "$@"' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

# Expose the port Hugo will run on
EXPOSE 1313

# Use the entrypoint script
ENTRYPOINT ["/entrypoint.sh"]

# Set the default command to run Hugo server
CMD ["hugo", "server", "--bind", "0.0.0.0", "--port", "1313", "--buildDrafts", "--buildFuture", "--disableFastRender", "--baseURL", "http://localhost:1313"]
