# postgresql-build

![alt text](https://img.shields.io/badge/PostgreSQL-9.6.5-green.svg) ![alt text](https://img.shields.io/badge/Docker-17.05%20CE-green.svg) ![alt text](https://img.shields.io/badge/Make-4.1-green.svg)


Este projeto foi desenvolvido para facilitar a geração dos RPMs do Postgres, quando existe a necessidade de alteração do Blocksize, ou mesmo do tamanho do WAL Size.

Por padrão este projeto compila o código utilizando um Blocksize de 32KB e um WAL Size de 8MB.

Para este projeto foi definido que os RPMs serão gerados para o Centos 7.3 na arquitetura x86. Sendo estes RPMs do source da versão 9.6.5 do PostgreSQL.

Como pré-requisito para executar este build, é necessario que a maquina contenha Docker e Make instalados.

Para executar o build apenas faça um make deste projeto. Os RPMs serão gerados em uma subpasta do projeto, com o nome RPMS.
