# Use the official Bun image
FROM oven/bun:debian

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package.json /app/package.json
RUN bun install

# Copy the rest of your application code
COPY . .

# Expose your application's port (adjust if needed)
EXPOSE 3000

# Start the Bun app (replace `index.ts` with your entry point if different)
CMD ["bun", "run", "dev"]
