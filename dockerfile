# Usamos la imagen oficial de PHP con Apache para PHP 8.1
FROM php:8.1-apache

# Instalamos la extensión mysqli
RUN docker-php-ext-install mysqli

# Copiamos los archivos de nuestra aplicación al directorio de Apache
COPY . /var/www/html

# Apache escucha en el puerto 80 por defecto, pero si necesitas exponer otro puerto, puedes hacerlo aquí
EXPOSE 80


