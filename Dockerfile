FROM php:8.2-cli

# Instalar extensiones necesarias para SQLite
RUN docker-php-ext-install pdo pdo_sqlite

# Copiar todo el proyecto
COPY . /app
WORKDIR /app

# Exponer el puerto esperado por Railway
EXPOSE 3000

# Iniciar el servidor PHP en el puerto correcto
CMD ["php", "-S", "0.0.0.0:3000", "index.php"]
