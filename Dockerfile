FROM node:12.2.0-alpine

WORKDIR /node

# Copy dependency files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Run tests
RUN npm run test

EXPOSE 8000 443

CMD ["node", "app.js"]
