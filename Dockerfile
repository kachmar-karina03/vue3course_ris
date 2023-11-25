# Використовуємо офіційний образ Node.js
FROM node:14

# Встановлюємо робочий каталог в /app
WORKDIR /app

# Копіюємо файли з поточної директорії (де розташований Dockerfile) в /app в контейнері
COPY . /app

# Встановлюємо залежності за допомогою npm
RUN npm install

# Запускаємо додаток при старті контейнера
CMD ["npm", "run", "serve"]

