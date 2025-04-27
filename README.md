# COMO USAR:

## Pré-requisitos:

É necessário a instalação do docker e do git.

1. Abra o terminal em alguma pasta que você queria rodar a aplicação:


```
mkdir fast-api-docker
cd fast-api-docker
```

2. Clone o repositório e entre na pasta do app:

```
git clone https://github.com/medeiros-arthur/fast-api-docker.git
cd fast-api-docker
```

3. Suba o compose para o docker:

```
sudo docker-compose up -d --build
```

4. Acesse o app em http://localhost:8000/docs

## Para parar e desinstalar o app/serviço:

1. Navegue até a pasta do projeto no seu terminal e digite:

```
sudo docker-compose stop
sudo docker-compose rm
```

2. Delete as imagens:

```
sudo docker rmi fast-api-docker_fastapi-app
sudo docker rmi python:3.11-slim
```

3. Remova os arquivos do projeto:

```
cd ../..
rm -rf <nome-da-pasta-do-projeto>
```
