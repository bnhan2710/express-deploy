
FROM node:21.7.3

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

RUN npm install

COPY . .

COPY .env .env

EXPOSE 8000

# Start the application
CMD ["npm", "start"]
    