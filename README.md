
# Laravel + Docker

## Este projeto é um template para projetos que necessitem usar Laravel + Docker

>Versão: 1.0.1
>
>Autor: **[Danilo Ferreira Sousa](https://github.com/daniloferreirasousa)**
>
>PHP: 8.1.6
>
>MySQL: 5.7

### Instruções:

#### - Faça o download do repositório para a sua maquina
#### - Crie as imagens do docker com:

`docker-compose build`

#### - Agora para subir os containers use:

`docker-compose up -d`

>Obs: Se estiver usando windows, é necessário que o **Docker Toolbox** ou **Doker Desktop** esteja instalado.

#### - Para ver o ip da sua maquina virtual com o seguinte comando:

`docker-machine ip`

---
   
>Pronto já é possivel acessar o seu projeto pelo ip da sua máquina virtual com a porta definida no arquivo "docker-compose.yml" as portas podem ser alteradas a qualquer >momento de acordo com a necessidade.

