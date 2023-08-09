## O que é Rede?
- interligação de maquinas passando info. cada nó se comunicam por meio de um protocolo
- **interoperabilidade** a capacidade de interação entre sistemas bem diferentes em termos de hardware e software. 


## CAMADA DE REDES
- ferramenta para estudo cisco packet tracer
> Aplicação
- HTTP por exemplo, quando mandamos uma mensagem no chat no app
> Transporte
- é o empacotamento da mensagem para que possa ser enviada para a rede. atua ainda no smartphone no exemplo hipotetico
> Rede
- presente no roteador. responsável por conectar dispositivos diferentes. o principal protocolo usado aqui é o IP. este protocolo adiciona cabeçalhos como endereço de destino e origem do pacote e calcula a rota de trafegos 
> Física
- consiste na transmissão dos bits das mensagens por meio de uma séries de dispositivos de redes. após a mensagem trafegar em diferentes dispositivos físicos e chegar no celular destinatário, ela irá passar pelo processo reverso, irá descapsular na camada transporte até que fique disponível

<hr>
<hr>

> ping
- faremos teste de conectividade.no cmd. fornece TTL(time-to-live), ou seja, o tempo de espera para que tenha uma resposta do encaminhamento do pacote, se o tempo for superior ao TTl então se considerará pacote perdido. o termo SALTOS se refere a numeros de roteadores que o pacote passou
```
ping www.google.com.br
tracert www.google.com.br
```
forn
