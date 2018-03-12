# docker run -d -p 8080:3000 -v "$(pwd):/var/www" -w "/var/www" node npm start
# base de receita
FROM node:latest
# autor
MAINTAINER Rafael Petronilio
# mapeamento quando estiver em um container, faz copia
COPY . /var/www
# baixa as dependencias do node
RUN npm install
#
ENTRYPOINT npm start
#
EXPOSE 3000

