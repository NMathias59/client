# Utilisez une image de base Node.js
FROM node:14

# Définissez le répertoire de travail
WORKDIR /usr/src/app

# Copiez le package.json et le package-lock.json pour l'installation des dépendances
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers du projet
COPY . .

# Exécutez l'application React
CMD ["npm", "start"]