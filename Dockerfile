# Stage 1 : Build Angular
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Stage 2 : Nginx
FROM nginx:alpine
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /app/dist/olympic-games-starter/browser /app
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
