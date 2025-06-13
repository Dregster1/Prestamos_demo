FROM php:8.2-cli

# Copia tu proyecto al contenedor
COPY . /app
WORKDIR /app

# Expone el puerto 3000 para Railway
EXPOSE 3000

# Inicia el servidor embebido de PHP en el puerto 3000
CMD ["php", "-S", "0.0.0.0:3000", "index.php"]
