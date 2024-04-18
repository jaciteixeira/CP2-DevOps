FROM nginx

RUN apt-get -y update
RUN apt -y install curl && apt -y install vim

WORKDIR /MEU-SITE/

COPY index.html /usr/share/nginx/html/
COPY evidencia.png /usr/share/nginx/html/

LABEL Image = "Imagem docker para a entrega do CheckPoint 2" \
Author="RM99627 - Jaci Teixeira Santos" \
Version="1.0" \
Description="Entrega CP2" \
Email="jaci9306@gmail.com"

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# comandos pra buildar e rodar container
# docker build -t rm99627-nginx .
# docker container run --name rm99627-nginx -d -p 80:80 -it rm99627-nginx