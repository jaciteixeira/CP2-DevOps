FROM nginx

RUN apt-get -y update
RUN apt -y install curl && apt -y install vim

WORKDIR /MEU-SITE

COPY index.html index.html

# Define as permissões do arquivo para conceder leitura ao usuário rm99627
RUN chown rm99627:rm99627 index.html && chmod 644 index.html

LABEL Image = "Imagem docker para a entrega do CheckPoint 2" \
Author="RM99627 - Jaci Teixeira Santos" \
Version="1.0" \
Description="Entrega CP2" \
Email="jaci9306@gmail.com"

EXPOSE 8080

RUN adduser rm99627
USER rm99627
WORKDIR /home/rm99627

CMD ["nginx", "-g", "daemon off;"]