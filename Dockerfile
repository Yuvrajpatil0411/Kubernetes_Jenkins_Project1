FROM node:20-alpine

WORKDIR /node

# Copy dependency files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

EXPOSE 8000

CMD ["npm", "start"]
