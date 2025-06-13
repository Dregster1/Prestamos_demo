FROM php:8.2-cli

COPY . /app
WORKDIR /app

EXPOSE 3000

CMD php -S 0.0.0.0:${PORT:-3000} index.php
