# Utiliser une image de base, par exemple, Ubuntu
FROM ubuntu:20.04

# Installer des dépendances (exemple : un serveur web)
RUN apt-get update && apt-get install -y apache2

# Copier les fichiers de votre application dans l'image
COPY ./app /var/www/html

# Définir des variables d'environnement
ENV PORT=80

# Exposer un port
EXPOSE $PORT

# Commande de démarrage de l'application
CMD ["apache2ctl", "-D", "FOREGROUND"]
