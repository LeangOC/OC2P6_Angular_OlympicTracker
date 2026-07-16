# Construction de l'application Angular
FROM node:20-alpine AS builder

# Définition du répertoire de travail
WORKDIR /app

# Copie des dépendances
COPY package*.json ./

# Installation des dépendances
RUN npm ci

# Copie du code source
COPY . .

# Génération de l'application Angular
RUN npm run build

# Image Nginx pour servir l'application
FROM nginx:alpine

# Copie de la configuration Nginx
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copie des fichiers compilés
COPY --from=builder /app/dist/olympic-games-starter/browser /app

# Exposition du port HTTP
EXPOSE 80

# Démarrage du serveur Nginx
CMD ["nginx", "-g", "daemon off;"]
