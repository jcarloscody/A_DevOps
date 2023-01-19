<img src="maquina virtual">
- Máquinas virtuais são capazes de isolar sistemas, com isso, o controle sobre a aplicação fica mais fácil.
- Containers podem isolar diversas aplicações, facilitando o controle acerca de portas e versões.


- Contaner: vai funcionar como processo dentro do SO. 
  - tem isolamento do SO
  - tem namespace: ou seja cada um destes containers tem a capacidade de se isolar em determinados níveis, 
  - tem o Cgroups: q vai garantir como os consumo de memoria será feito para cada um destes processos no SO

- Máquinas virtuais possuem camadas adicionais de virtualização em relação a um container;
- Containers funcionam como processos no host;
- Containers atingem isolamento através de namespaces;
- Os recursos dos containers são gerenciados através de cgroups.

- WSL2: windows subsistem for linux, é um subsistema linux rodando dentro do windows, a grosso modo ele vai virtualizar o SO linux para q possamos usar o docker neste SO. 


> Imagem
- conjunto de camadas com seus respectivos ids e independentes
- ela é read-only

> Container
- nada mais é do que o adicionamento de mais uma camada na imagem, uma cada camada de read-write
- quando criamos um container, criamos uma camada temporária sobre a imagem de escrita de informações

- Docker é um sistema de virtualização não convencional.
- o DOcker usa o conceito de Container e de imagens
- Para colocar um container em funcionamento precisa de imagens
  - estas imagens podem ser baixadas no hub do docker.
  - as imagens são criadas a partir de um arquivo Dockerfile, nele temos algumas diretivas q declaram o q teremos nesta imagem 


> Dockerfile
- ver comandos
- ver arquivo

> SUBIR IMAGENS PARA O DOCKER HUB
- criar conta no site
- fazer login localmente
```
docker login -u usuario_name
docker push usuario_name/nomeqq:versao
```

> PERSISTIR A CAMADA RW
- quando removemos um container, a camada rw é perdida, para resolver isto usamos o volume
- ver nos comandos
- temos 3 tipos
  - o bind mount: vamos fazer um bind entre o filesystem do nosso SO e o serviço de arquivo do nosso container, ou seja, temos uma ponte entre estes dois elementos que vao persistir as informaçoes no nosso host. é possível escrever os dados em uma camada persistente baseado na estrutura de pastas do host.
  - volume: efetivamente. vai ser gerenciado pelo docker 
  - tmpfs: temporário, só vai funcionar ho host linux, ele vai se perder quando sair. a ideia é persistir dados em memoria no host, mas os dados não estao sendo escritos na camada rw, estao sendo escritos diretamente na camada do host


> BRIDGE: serve para permitir a comunicação entre diferentes containers em um mesmo host 
> NONE: rede q ñ tem qq interface vinculada a ele.
> HOST: Serve para fazer comunicaão entre container e maquina, ou seja, a maquina que está rodando o container consegue se comunicar com o ip deste container por causa deste driver.  o container criado sob este tipo de rede, ou seja, na aplicação pratica o container terá a mesma port do host, ouseja, tira qq isolamento entre a interface de rede do container e do host.

> BANCO DE DADOS COMUNICAÇÃO
- 