FROM mongo:latest

# FROM mongo:ubuntu

LABEL name=MongoDB

RUN apt update

RUN apt install git -y

RUN git clone https://github.com/danchih/MongoDB.git

RUN mkdir /app

WORKDIR /app

COPY . .

EXPOSE 27017

CMD ["mongod"]
