# Laravel + Docker

## Este projeto é um template para novos projetos que necessitem usar Laravel + Docker

### Instruções:

#### - Faça o download do repositório para a sua maquina
#### - Crie as imagens do docker com:

<code>docker-compose build</code>

#### - Agora para subir os containers use:

<code>docker-compose up -d</code>

Obs: Se estiver usando windows, a maquina virtual deve estar ligada rodando ubuntu para possa acessar o projeto
#### - Para ver o ip da sua maquina virtual com o seguinte comando:

<code>
    docker-machine ip
</code>

---
   
Pronto já é possivel acessar o seu projeto pelo ip da sua máquina virtual com a porta definida no arquivo "docker-compose.yml" as portas podem ser alteradas a qualquer momento de acordo com a necessidade.

