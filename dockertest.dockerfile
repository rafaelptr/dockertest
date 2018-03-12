# docker run -d -p 8080:3000 -v "$(pwd):/var/www" -w "/var/www" node npm start
# base de receita
FROM node:latest
# variaveis de ambiente
ENV NODE_ENV=production
ENV PORT=3000
# autor
MAINTAINER Rafael Petronilio
# mapeamento quando estiver em um container, faz copia
COPY . /var/www
# diretorio de trabalho que será iniciado
WORKDIR /var/www
# baixa as dependencias do node
RUN npm install
# inicia aplicacao
ENTRYPOINT npm start
# porta 
EXPOSE $PORT

