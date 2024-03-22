# Usamos la imagen oficial de Nginx como base
FROM nginx

# Copiamos el archivo principal de HTML al directorio de contenido estático de Nginx
COPY ./php-attendance /usr/share/nginx/html

COPY ./nginx-docker.conf /etc/nginx/conf.d/nginx-docker.conf
# Puerto en el que Nginx escuchará
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
