# Criando uma imagem mongo (caso queira criar uma imagem mongo e ubuntu, utilize: FROM mongo:ubuntu)
FROM mongo:latest

# Criando uma etiqueta para imagem criada
LABEL name=MongoDB

# Fazendo o update e a intalação do sistema git dentro da imagem que esta sendo criada (-y = yes)
RUN apt update
RUN apt install git -y

# Chamando o repositorio selecionado dentro do github (Ao clona o git ele ja criara uma pasta (nesse caso nomeada de 'MongoDB' por causa do nome do repositorio do github) dentro da imagem e enviara os arquivos do git para ela)
RUN git clone https://github.com/danchih/MongoDB.git

# Expondo a porta que será utilizada pela imagem
EXPOSE 27017

# É utilizado para executar apenas na criação do container
CMD ["mongod"]
