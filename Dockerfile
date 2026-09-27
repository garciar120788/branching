# Imagen ligera de nginx
FROM httpd:2.4

# Copiamos nuestras páginas al directorio que nginx sirve por defecto
COPY index.html /usr/local/apache2/htdocs/index.html
COPY git.html /usr/local/apache2/htdocs/git.html
COPY github.html /usr/local/apache2/htdocs/github.html

# nginx escucha en el puerto 80 dentro del contenedor
EXPOSE 80

# La imagen base de nginx ya arranca el servidor automáticamente,
# pero lo dejamos explícito:
CMD ["httpd", "-D", "FOREGROUND"]
