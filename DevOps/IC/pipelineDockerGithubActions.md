- criaão de um container docker
- melhorar uma rotina de ic
- utilizar artefatos
- github actions


- É interessante que as rotinas de integração contínua possam ser sempre executadas independentemente da branch que o código está sendo atualizado. Assim, se abrirmos uma nova branch para criar uma função diferente na aplicação, os testes podem ser executados desde o início.

- Para fazer isso, podemos alterar o seção de on: push: para qualquer branch, porém o Github Actions não aceita apenas o asterisco como opção, precisamos de uma string, ou um texto, logo podemos colocar o asterisco entre aspas simples ou duplas.

- O marketplace do Github Actions é uma maneira de usarmos códigos que foram escritos por outras pessoas, como se fossem bibliotecas de uma linguagem de programação, assim não precisamos tentar resolver os mesmos problemas que outras pessoas já resolveram, facilitando o trabalho.

- Ele também traz algumas métricas de utilização que podemos nos basear para escolhermos qual rotina vamos usar; geralmente dê preferências para as rotinas que têm mais utilizadores, por questão de suporte, confiabilidade e credibilidade.

- Além disso, também é possível encontrar rotinas desenvolvidas por empresas, como o Docker e a Amazon, que trabalham muito bem com os seus produtos e serviços.

- O marketplace vai estar disponível na interface do github, assim que você tentar editar um arquivo de rotina CI/CD, do lado direito, se ele não aparecer tente tirar um pouco de zoom da página segurando o Ctrl e rodando o scroll do mouse, ou rodinha do meio do mouse.