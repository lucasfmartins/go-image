# FullCycle - Imagem Docker em Go
Este repositório faz parte de um estudo sobre containers e Docker, com ênfase na criação de imagens Docker leves e funcionais para aplicações em Go.

## Objetivo
O projeto tem como principal objetivo demonstrar como criar uma aplicação simples em Go e empacotá-la em uma imagem Docker extremamente otimizada, com menos de 2 MB de tamanho. A aplicação imprime a mensagem "Full Cycle Rocks!!" ao ser executada.

## Conceitos Estudados
Durante a construção deste projeto, foram explorados os seguintes conceitos:

- **Criação de imagens Docker multi-stage**: Utilizamos a técnica de multi-stage builds para separar o processo de compilação da aplicação Go e, em seguida, copiar apenas o binário resultante para uma imagem mínima (scratch).
- **Otimização de imagens Docker**: Foco na redução do tamanho da imagem final utilizando a imagem scratch, que é a menor imagem base disponível no Docker.
- **Go Lang com Docker**: Utilização da imagem oficial do Go Lang para compilar e gerar binários otimizados.

## Imagem no Docker Hub

### Repositório da imagem Go:
```sh
https://hub.docker.com/repository/docker/lucasfmartins/fullcycle-go/general
```

A imagem gerada pode ser baixada diretamente do Docker Hub e executada para ver o resultado da aplicação. 


Para executá-la, basta rodar o seguinte comando:

```sh
docker run lucasfmartins/fullcycle
```
Ao executar este comando, a saída no terminal será:

```sh
FullCycle Rocks!!
```

## Como construir a imagem localmente
Para aqueles que desejam construir e testar a imagem localmente, siga os passos abaixo:

Clone o repositório:

```sh
git clone https://github.com/lucasfmartins/fullcycle-go.git
cd fullcycle-go
```

Construa a imagem Docker:

```sh
docker build -t fullcycle-go .
```

Execute o container:

```sh
docker run --rm fullcycle-go
```

A saída deverá ser:

```sh
Full Cycle Rocks!!
```