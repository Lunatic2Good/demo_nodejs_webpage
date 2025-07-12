
FROM node:alpine
# COPY ./ ./
# RUN npm install
# EXPOSE 8081
# CMD ["npm", "start"]


WORKDIR /app

# Copy only package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app (excluding node_modules due to .dockerignore)
COPY . .

CMD ["npm", "start"]
