- GitHub Actions: ferramenta de CI/CD 

- CI - integração continua: podemos criar uma rotina que é executado sempre que a aplicação tiver uma atualização. CI estamos nos referindo ao processo de juntar o código antigo com novas funcionalidades de forma automática, realizando testes e compilando o código para evitar problemas de lógica ou funcionalidades pré-existentes.

- jobs: o q deve ser feito
  - build: uma das tarefas a executar
    - runs-on: onde vai executar esta task
    - steps: passos
      - uses: uso de repositorio para conf a maquina
      - name: nome do passo
      - run: executa um comando dentro da maquina
    - needs: é o como o depends_on


- Estrategia de matrizes: permite criar vários ambientes para poder testar a nossa aplicação. sem precisar criar uma rotina diferente para cada um destes ambientes.