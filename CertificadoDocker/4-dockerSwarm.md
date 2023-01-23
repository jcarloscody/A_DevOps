- oque é? é um orquestrador de containers num cluster de máquinas. ele irá definir em qual máquina irá rodar determinado container, se um container precisa ser reiniciado em caso de falha, ... O Docker Swarm divide os containers entre múltiplas máquinas de um mesmo cluster de maneira automática.
  -  Através do dispatcher o Docker Swarm define a melhor máquina para executar algum container


- docker machine: ferramenta que dentro de uma maquina fisica ela consegue criar diversas máquinas virtuais e cada uma delas terá o docker instalado. A Docker Machine cria máquinas virtuais bem leves já provisionadas com o Docker.

- Um cluster é um conjunto de máquinas dividindo poder computacional, determinado processamento

- O que acontecerá com o nosso swarm em caso de perda do manager? Não conseguiremos mais executar comandos de leitura e/ou criar novos serviços.Com a ausência do manager, não teremos mais nós capazes de executar comandos administrativos.
  -   por isto é importante fazer o backup

> Backup Do Swarm
-  para evitar que trajedias  ocorram e teremos um ponto de retorno
-  path onde fica os logs, backup tudo que podemos criar
   -  /var/lib/docker/swarm


> docker-machine ls
- lista as maquinas virtuais
> docker-machine create -d virtualbox vm1
- cria mv
- virtualbox: é o nome do drive para aquela maquina virtual
- vm1: é nome que colocamos para aquela vm1
> docker-machine start vm1
- inicializa uma maquina virtual
> docker-machine ssh vm1
- acessar a maquina virtual
> docker swarm init
- comando q inicia o swarm
- comando dado após ter dado o comando "docker-machine ssh vm1" para acessar a máquina
- dará um aviso sobre para qual vinculo quer fazer ip virtual ou fisico.
    > docker swarm init --advertise-addr ip_maquina_virtual
    - é importante add esta flag pq preciso fixar um ip para a maquina criadora do swarm, para que as maquinas que forem sido criadas a partir de agora possa manter uma comunicação fixa e estavel com quem criou o swarm
    - adicionando o ip fixo para a maquina virtual na sua inicializacao.
    - ele especifica o comando para add worker a este manager. cria uma maquina virtual e add o respectivo comando
> docker info
- mostra se o swarm está ativo dentre outras
> docker swarm join-token worker
- é necessário antes acessar a mv manager
- comando que mostra o comando para add novos works ao manager
- comando para pegar o token e adicionar novos works
- acessa a mv que precisa e adiciona o comando capturado aqui
> docker node ls
- dentro da mv1 que é o manager
- pode listar todos os works e o proprio manager
- consegue apenas no manager
> docker swarm leave
- comando para o work sair do cluste orquestrado pelo manager, para mudar o status de ready para down, isto possibilita remove-lo
- comando dado dentro do vm worker
> docker node rm id_node
- comando dado dentro do manager
- precisa o worker dá um comando de leave
- só irá remover se o node tiver status down (desligado)
> docker container run -p 8080:3000 -d nome-imagem
- subir o container 
- o mapeamento da interface de rede irá ocorre na maquina virtual e ñ para a maquina física.
    - será necessário inspect inspecionar a máquina virtual respectiva dentro do manager.
    - > docker node inspect nome_vm
      - comando dado dentro do manager
      - disto pegará o status->Addr
> docker service create -p 8080:3000 imagem-nome
- cria um container e mapeia globalmente, no contexto do swarm. ou seja, todos os outros containers terão ciência da sua existência
- se quisermos criar um container dentro de uma máquina virtual e fazer com que todas as outras máquinas tenham ciência da existência deste, devemos criar ele como service 
- e como ele está alterando o cluster, devemos criar no manager
> docker service ls
- mostrar todos os servicos 
> docker service ps id
- mostra qual máquina está executando o service
> docker swarm join-token manager
- mostra o token para criação de mais manager
> 