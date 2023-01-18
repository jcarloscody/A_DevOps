Repositório de Imagens
- docker hub
- onde estão as imagens

> Descrição das columns
- container id: identificador do container
- image: imagem usada como base para criação do container
- command: comando usado para criar o container 
- created:
- status:
- ports:
- names: nome criado automaticamente quando nao especificamos um nome 

> flags
- -d para ñ travar o terminal 
- --force  pode usar para forçar algo
- -P  faz o mapeamento de portas do container para nossa maquina
- -p faz mapeamento personalizado
  - -p [port da minha maquina]:[port do container]
  - -p 8080:80
- -t para personalizar um nome
- -s mostra o tamanho dele, do container (camada rw) e tamanho total (camada read-only e rw) 
> docker run nome_imagem
- baixa e executa a imagem, sobe o container
- FLUXO: Procura a imagem localmente -> Baixa a imagem caso não encontre localmente -> Valida o hash da imagem -> Executa o container.
> docker pull nome
- apenas baixa a imagem
> docker ps  OU docker container ls
- quais containers estão em execução neste momento
> docker ps -a
- ver se ter alguma imagem executada pelo docker run ou se já teve algum executado
> docker run ubuntu sleep 1d
- caso queiramos que um processo permaneça vivo, devemos passar um command informando isto, neste caso ele ficará vivo por 1 dia
> docker stop container_id
- para um container, ele demora 10s para parar um container
> docker stop -t=0 container_id
- parar instantaneamente
> docker start container_id
- inicia um container parado
> docker exec -it container_id bash
- exec: vai executar um comando no container x
- -it: quer dizer em modo iterativo
> exit
- sai do container
> docker pause container_id
- pausar um container
> docker unpause container_id
- despausar um container
> docker rm id_container
- remove o container
> docker run -it ubuntu bash
- para executa o container
- executa o comando para manter vivo e
- executa para ficar em modo iterativo
> docker port id_container
- mostra o mapeamento de portas do container para o meu host
> docker images
- ver as imagens
> docker inspect id_image
- diversas informaçoes 
> docker history id_image
- histórico da imagem 
> docker build -t nome_qualquer .
- comando que deve ser executado no diretorio que se encontrar o Dockerfile
> docker stop $(docker container ls -q)  
- vai parar todos os containers ativos 
> docker tag nome_da_image nome_novo
- cria uma copia da image
> docker container rm $(docker container ls -aq)  
- vai remover todos os container
> docker rmi $(docker image ls -aq)
- remover todas as imagesn
> docker run -it -v path_localhost:path_container  ubuntu bash
- volume - persistencia de dados
- -v 
> docker run -it --mount type=bind,source=path_localhost,target=path_container ubuntu bash
- volume - persistencia de dados
- mesma coisa, aqui é mais semantico
> docker volume create nome_volume
- cria um volume gerenciado pelo docker
- volume - persistencia de dados
- os dados estarão dentro da pasta docker no caminho /var/lib/docker/volumes/nome_volume/_data
  - > docker run -it -v nome_volume:path_container  ubuntu bash
- > docker volume ls
> docker run -it --tpmfs=paht_container ubuntu bash
> docker network ls
- mostra as redes
> docker network create --driver bridge minha-rede
- criamos nossa rede - bridge
> docker run -it --name ubuntu1 --network minha-rede ubuntu bash
- cria um container dentro de uma rede personalizada
> docker run --network host nome_imagem
- o container será executado na rede host
> docker run -d --network minha-rede -p 3000:4000 imagem-aplicacao
> docker run -d --network minha-rede --name meu-banco mongo:4.4.6
- comunicação de banco
- a aplicação vai se comunicar com o banco
- ver o docker composer