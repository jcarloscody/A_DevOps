Infrastructure as Code IaC: toda a infraestrutura da aplicação está expresso na forma de código, ou seja, a qq momento posso criar e provisionar os ambientes que a minha aplicacao necessitar. É um jeito de escrever codigo para definar, implantar, atualizar, gerenciar a infra. 

- Ferramentas usadas
  - Ansible 
  - Terraform
  - AWS

- choco install terraform
- choco install python
- para ansible: nao tem nativo para win, ai usaremos pacotes do py
    - python -m pip install --user ansible
    - python -m pip install --user paramiko
- AWSCLI https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html



> Terraform
- funcionamento
  - escrevemos um script de configuraçaõ
  - o terraform interpreta este script
  - e faz a "mágica" por trás

> Beneficios IaC
- deploy automatizado
- controle de versão
- velocidade e segurança
- reuso

> file:   main.tf


