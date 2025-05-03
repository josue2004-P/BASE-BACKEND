FROM node:18

WORKDIR /app

# Copia dependencias e instálalas
COPY package*.json ./
RUN npm install

# Copia todo el código restante
COPY . .

# Generar el cliente Prisma (si lo usas)
RUN npx prisma generate

# Expone el puerto de la API
EXPOSE 3000

# Comando para iniciar
CMD ["node", "src/index.js"]