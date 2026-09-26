# Imagen ligera de nginx
FROM nginx:alpine

# Copiamos nuestras páginas al directorio que nginx sirve por defecto
COPY index.html /usr/share/nginx/html/index.html
COPY git.html /usr/share/nginx/html/git.html
COPY github.html /usr/share/nginx/html/github.html

# nginx escucha en el puerto 80 dentro del contenedor
EXPOSE 80

# La imagen base de nginx ya arranca el servidor automáticamente,
# pero lo dejamos explícito:
CMD ["nginx", "-g", "daemon off;"]
