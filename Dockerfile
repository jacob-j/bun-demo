# Use the official Bun image
FROM oven/bun:debian

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package.json /app/package.json
RUN bun install

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    unzip
# Copy the rest of your application code
COPY . .

# Uncomment to try earlier Bun version
# RUN rm -rf /usr/local/bin/bun
# RUN curl -fsSL https://bun.sh/install | bash -s "bun-v1.2.1" && \
# ln -s $HOME/.bun/bin/bun /usr/local/bin/bun

# Expose your application's port (adjust if needed)
EXPOSE 3000

# Start the Bun app (replace `index.ts` with your entry point if different)
CMD ["bun", "run", "dev"]
