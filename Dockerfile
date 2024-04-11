# Dockerfile
FROM node:21.0.0-alpine

# Create destination directory
RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app

# Update and install dependencies
RUN apk update && apk upgrade
RUN apk add git

# Copy the app, note .dockerignore
COPY . /usr/src/nuxt-app/

# Install dependencies
RUN npm install

# Build the application
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Set environment variables
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# Command to run the application
CMD ["npm", "run", "dev"]
