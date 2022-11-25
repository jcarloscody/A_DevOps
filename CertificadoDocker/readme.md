- Docker é um sistema de virtualização não convencional.
- o DOcker usa o conceito de Container e de imagens
- Para colocar um container em funcionamento precisa de imagens
  - estas imagens podem ser baixadas no hub do docker.
  - as imagens são criadas a partir de um arquivo Dockerfile, nele temos algumas diretivas q declaram o q teremos nesta imagem 


# COmandos
- Compilar o file Dockerfile
```
docker build
```

- Baixar imagem
```
docker pull ubuntu
```

- listar imagem
```
docker pull ubuntu
```

- Iniciar Container
```
docker run -i -t ubuntu
```
  - -i container interativo
  - -t anexar o terminal virtual tty do container ao nosso host

- Container em execucao
```
docker ps
```

- Container existentes q foram encerrados
```
docker ps -a
```

- Remover Container
```
docker rm
```

- Remover Container todos
```
docker rm $(docker ps -qa)
```