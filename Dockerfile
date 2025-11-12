FROM apify/actor-node-playwright-chrome:20

# Copiar dependencias
COPY package*.json ./
RUN npm install --production

# Copiar código fuente
COPY . .

# Iniciar aplicación
CMD npm start
