# Etapa 1: Build
FROM golang:1.20-alpine AS builder

# Configura a pasta de trabalho
WORKDIR /app

# Copia os arquivos de código e módulos
COPY go.mod .
COPY main.go .

# Baixa as dependências e compila o binário com otimizações
RUN go mod tidy
RUN GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o fullcycle .

# Etapa 2: Imagem final mínima
FROM scratch

# Copia o binário compilado da etapa anterior
COPY --from=builder /app/fullcycle /fullcycle

# Define o ponto de entrada para executar o binário
ENTRYPOINT ["/fullcycle"]
