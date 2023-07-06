# Start from a base image
FROM node:14-alpine
# Set the working directory in the Docker image
WORKDIR /app
# Copy the rest of the application into the Docker image
COPY . .
#Using ENV
ENV NODE_ENV=production
RUN npm install --production
# Expose the port the application runs on
EXPOSE 3001
# Define the command to run the application
CMD [ "npm", "start" ]