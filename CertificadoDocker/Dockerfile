
# dar um pull na imagem node versão 14
#A instrução FROM é usada para definirmos uma imagem como base para a nossa.
FROM node:14 

#instrução para definir um diretorio padrao para a nossa imagem
WORKDIR /app-node

# facultativ: argumento ou variavel que definimos um valor. que será usado posteriomente, 
# esta variavel é usada na criacao da imagem, ele so funciona no tempo do build da imagem
# se quiser passar para dentro do container então precisamos do ENV
ARG PORT=4000

# USADO dentro do container.  ou seja, se sua aplicação pega variaveis do sistema
# esta é uma forma de pegar
ENV PORT=$PORT
# $PORT   É a forma de pegar um valor da variavel


# facultativ mostrar qual a porta que está sendo executada, não é obrigatorio
EXPOSE $PORT 
# $PORT   É a forma de pegar um valor da variavel


# copiar todo o nosso projeto que está no 
# diretorio atual . para esta imagem node que
# estará num diretorio da nossa iamgem
# ou seja, estamos copiando este conteudo do diretorio do nosso host para o 
# diretorio dentro da nossa imagem chamada /app-node 
COPY . .

#vamos executar um comando dentro do nosso projeto
#este comando é executado enquanto a imagem é criada
RUN npm install 

#ponto de entrada quando o container for executado
ENTRYPOINT npm start