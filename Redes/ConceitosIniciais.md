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

> Conceitos
- protocolo icmp: é a base de funcionamento do comando ping. ele controla o envio do pct de mss e a recepção.
- protocolo arp: permite identificar o endereço físico de uma máquina a partir do endereço ip
- Hub: funciona como carteiro, porém não identifica para quem vai a carta, apenas envia para todo mundo que está conectado nele. funciona como broadcast, manda para todos que estão conectados, isto gera congestionamento na rede.
- DNS: protocolo que funciona como uma lista telefonica, identificamos cada número pelo nome do agente. para isto usamos a ferramenta nslookup. esta ferramenta indicará o ip do name server.
```
nslookup
```
- conector RJ45
- TIA - associação internacional de telecomunicações
- placa de rede: temos diferentes canais, temos canais dedicados para envio, outros para recepção.
- cabo cruzado/crossover

> redes com Switches
- Switches: utiliza o protocolo arp para entender quais dispositivos estão plugados em suas portas, e assim verifica quem é quem na rede, após esta primeira interação, ele armazena na memória interno qual o endereço mac (endereço físico da placa de rede de cada dispositivo) está associado o endereço ip. Como o switche faz uso de memório, caso a memória se esgote, ele funcionará como Hub. ELE TAMBÉM permite conectar diferentes dipositivos em uma única rde.
- endereço mac: é como se fosse o rg do dispositivo(atribuido pelo fabricante), usado apenas na rede interna. quando precisa mandar o pct de dados para um dispositivo que está externo a rede, ele precisa de um documento universalmente aceita, que é o endereço ip. quando precisa se conectar a internet, precisa-se de outro endereço  para que os outros dispositivos consigam se comunicar, ip.
```
ipconfig /all
```
- soft monitoramento de rede: wireshark
- subnet mask: identifica qual parte de endereço de ip se refere ao endereço da rede e qual parte podemos usar para modificar e atribuir um endereço diferente dessa rede para cada dispositivo que queremos conectar  
- Roteador: 