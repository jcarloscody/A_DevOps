- oque é? é um orquestrador de containers num cluster de máquinas. ele irá definir em qual máquina irá rodar determinado container, se um container precisa ser reiniciado em caso de falha, ... O Docker Swarm divide os containers entre múltiplas máquinas de um mesmo cluster de maneira automática.
  -  Através do dispatcher o Docker Swarm define a melhor máquina para executar algum container


- docker machine: ferramenta que dentro de uma maquina fisica ela consegue criar diversas máquinas virtuais e cada uma delas terá o docker instalado.
A Docker Machine cria máquinas virtuais bem leves já provisionadas com o Docker.

- Um cluster é um conjunto de máquinas dividindo poder computacional

> docker-machine ls
- lista as maquinas virtuais
> docker-machine create -d virtualbox vm1
- cria mv
- virtualbox: é o nome do drive para aquela maquina virtual
- vm1: é nome que colocamos para aquela vm1
> docker-machine ssh vm1
- acessar a maquina virtual
> docker swarm init
- comando dado após ter dado o comando "docker-machine ssh vm1"
- comando q inicia o swarm
- dará um aviso sobre para qual vinculo quer fazer ip virtual ou fisico.
    > docker swarm init --advertise-addr ip_maquina_fisica
    - adicionando o ip fixo para a maquina virtual na sua inicializacao.
> docker info
- mostra se o swarm está ativo dentre outras
> docker swarm join-token worker
- é necessário antes acessar a mv
- comando para adicionar novos works
- comando para pegar o token e adicionar novos works
- acessa a mv que precisa e adiciona o comando capturado aqui
> docker node ls
- dentro da mv1 que é o manager
- pode listar todos os works e o proprio manager
- consegue apenas no manager
> docker swarm leave
- comando para o work sair do cluste orquestrado pelo manager
- comando dado dentro do vm
> docker node rm id_node
- comando dado dentro do manager
- só irá remover se o node tiver status down
> docker container run -p 8080:3000 -d nome-imagem
- subir o container 
- o mapeamento da interface de rede irá ocorre na maquina virtual e ñ para a maquina física.
    - será necessário inspect inspecionar a máquina virtual respectiva dentro do manager.
    - > docker node inspect nome_vm
      - disto pegará o status->Addr
> docker service create -p 8080:3000 imagem-nome
- cria um container e mapeia globalmente, no contexto do swarm. ou seja, todos os outros containers terão ciência da sua existência
> 