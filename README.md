# 🚀 Ambiente de Desenvolvimento NestJS

<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="120" alt="Nest Logo" /></a>
</p>

<p align="center">
  <a href="LICENSE" target="blank">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License" />
  </a>
  <a href="https://nodejs.org" target="blank">
    <img src="https://img.shields.io/badge/node-%3E%3D%2018-brightgreen.svg" alt="Node.js Version" />
  </a>
  <a href="https://www.docker.com/" target="blank">
    <img src="https://img.shields.io/badge/docker-%3E%3D%2020.10.0-blue.svg" alt="Docker Version" />
  </a>
  <a href="https://pnpm.io" target="blank">
    <img src="https://img.shields.io/badge/pnpm-%3E%3D%208.0.0-orange.svg" alt="pnpm Version" />
  </a>
</p>

  <p align="center">A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.</p>
    <p align="center">
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/dm/@nestjs/common.svg" alt="NPM Downloads" /></a>
<a href="https://circleci.com/gh/nestjs/nest" target="_blank"><img src="https://img.shields.io/circleci/build/github/nestjs/nest/master" alt="CircleCI" /></a>
<a href="https://discord.gg/G7Qnnhy" target="_blank"><img src="https://img.shields.io/badge/discord-online-brightgreen.svg" alt="Discord"/></a>
<a href="https://opencollective.com/nest#backer" target="_blank"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor" target="_blank"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
  <a href="https://paypal.me/kamilmysliwiec" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-ff3f59.svg" alt="Donate us"/></a>
    <a href="https://opencollective.com/nest#sponsor"  target="_blank"><img src="https://img.shields.io/badge/Support%20us-Open%20Collective-41B883.svg" alt="Support us"></a>
  <a href="https://twitter.com/nestframework" target="_blank"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow" alt="Follow us on Twitter"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->

## 📋 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Tecnologias](#-tecnologias)
- [Começando](#-começando)
  - [Pré-requisitos](#pré-requisitos)
  - [Instalação](#instalação)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Ambiente de Desenvolvimento](#-ambiente-de-desenvolvimento)
  - [Configuração Local](#configuração-local)
  - [Configuração Docker](#configuração-docker)
- [Scripts Disponíveis](#-scripts-disponíveis)
- [Comandos Docker](#-comandos-docker)
- [Testes](#-testes)
- [Produção](#-produção)
- [Troubleshooting](#-troubleshooting)
- [Contribuição](#-contribuição)
- [Contato](#-contato)
- [Licença](#-licença)

## 🎯 Sobre o Projeto

Este é um ambiente de desenvolvimento padronizado construído com NestJS, Docker e Docker Compose. O projeto fornece uma configuração completa e pronta para uso, permitindo que desenvolvedores iniciem rapidamente novos projetos com as melhores práticas de desenvolvimento.

## 🛠 Tecnologias

Este projeto é construído com as seguintes tecnologias:

- [NestJS](https://nestjs.com/) - Framework Node.js progressivo
- [TypeScript](https://www.typescriptlang.org/) - Superset JavaScript tipado
- [Docker](https://www.docker.com/) - Plataforma de containerização
- [Docker Compose](https://docs.docker.com/compose/) - Ferramenta para definir e executar aplicações Docker multi-container
- [pnpm](https://pnpm.io/) - Gerenciador de pacotes rápido e eficiente
- [Node.js](https://nodejs.org/) - Runtime JavaScript

## 🚦 Começando

### Pré-requisitos

Antes de começar, você precisa ter instalado em sua máquina:

- Node.js (>= 18.x)
- pnpm (>= 8.x)
- Docker (>= 20.10.0)
- Docker Compose (>= 2.0.0)

### Instalação

1. Clone o repositório
```bash
git clone https://seu-repositorio/ambiente-dev.git
cd ambiente-dev
```

2. Instale as dependências
```bash
pnpm install
```

3. Configure as variáveis de ambiente
```bash
cp .env.example .env
```

## 📁 Estrutura do Projeto

```
ambiente-dev/
├── src/                    # Código fonte da aplicação
│   ├── main.ts            # Ponto de entrada da aplicação
│   ├── app.module.ts      # Módulo principal
│   ├── app.controller.ts  # Controlador principal
│   └── app.service.ts     # Serviço principal
├── test/                  # Arquivos de teste
├── docker/                # Arquivos de configuração Docker
├── .env.example          # Exemplo de variáveis de ambiente
├── .gitignore           # Arquivos ignorados pelo Git
├── docker-compose.yml   # Configuração Docker Compose
├── Dockerfile          # Configuração da imagem Docker
├── nest-cli.json      # Configuração do NestJS CLI
├── package.json       # Dependências e scripts
├── tsconfig.json     # Configuração TypeScript
└── README.md        # Documentação do projeto
```

## 🔧 Ambiente de Desenvolvimento

### Configuração Local

1. Configure o ambiente:
```bash
pnpm install
```

2. Inicie o servidor de desenvolvimento:
```bash
pnpm run start:dev
```

### Configuração Docker

1. Construa e inicie os containers:
```bash
docker-compose up --build
```

2. Para modo detached:
```bash
docker-compose up -d
```

## 📜 Scripts Disponíveis

```bash
# Desenvolvimento
pnpm run start         # Inicia em modo desenvolvimento
pnpm run start:dev    # Inicia com hot-reload
pnpm run start:debug # Inicia com debugging
pnpm run start:prod # Inicia em modo produção

# Testes
pnpm run test        # Executa testes unitários
pnpm run test:e2e   # Executa testes end-to-end
pnpm run test:cov   # Gera relatório de cobertura
```

## 🐳 Comandos Docker

```bash
# Construir e iniciar containers
docker-compose up --build

# Iniciar em background
docker-compose up -d

# Parar containers
docker-compose down

# Ver logs
docker-compose logs -f

# Reiniciar serviços
docker-compose restart

# Limpar volumes
docker-compose down -v
```

## 🔍 Troubleshooting

### Problemas Comuns

1. **Porta 3000 em uso**
```bash
# Verifique processos usando a porta
sudo lsof -i :3000
# Mate o processo
kill -9 <PID>
```

2. **Problemas com permissões Docker**
```bash
# Adicione seu usuário ao grupo docker
sudo usermod -aG docker ${USER}
```

3. **Limpeza de Cache**
```bash
# Limpe o cache do Docker
docker system prune -a
```

## 🤝 Contribuição

1. Fork o projeto
2. Crie sua branch de feature
```bash
git checkout -b feature/MinhaFeature
```
3. Commit suas mudanças
```bash
git commit -m 'Add: MinhaFeature'
```
4. Push para a branch
```bash
git push origin feature/MinhaFeature
```
5. Abra um Pull Request

## 📫 Contato

Para suporte, feedback ou dúvidas, por favor abra uma issue no repositório.

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

# Ambiente de Desenvolvimento NestJS com Docker

Este é um projeto de configuração de ambiente de desenvolvimento utilizando NestJS, Docker e Docker Compose. O objetivo é fornecer um ambiente padronizado e isolado para desenvolvimento de aplicações NestJS.

## Pré-requisitos

Antes de começar, certifique-se de ter instalado em sua máquina:

- Docker
- Docker Compose
- Node.js (recomendado v18 ou superior)
- pnpm

## Estrutura do Projeto

```
├── Dockerfile           # Configuração do container Docker
├── docker-compose.yml   # Configuração dos serviços
├── src/                # Código fonte da aplicação
├── test/               # Arquivos de teste
└── ...
```

## Configuração do Ambiente

### Instalação Local

```bash
# Instalar dependências
$ pnpm install
```

### Usando Docker

1. Construa a imagem Docker:
```bash
$ docker build -t ambiente-dev .
```

2. Inicie os containers com Docker Compose:
```bash
$ docker-compose up -d
```

## Desenvolvimento

### Rodando a Aplicação

#### Localmente:

```bash
# Modo desenvolvimento
$ pnpm run start

# Modo watch
$ pnpm run start:dev

# Modo produção
$ pnpm run start:prod
```

#### Com Docker:

```bash
# Iniciar todos os serviços
$ docker-compose up

# Iniciar em modo detached
$ docker-compose up -d

# Parar todos os serviços
$ docker-compose down
```

## Testes

```bash
# Testes unitários
$ pnpm run test

# Testes e2e
$ pnpm run test:e2e

# Cobertura de testes
$ pnpm run test:cov
```

## Comandos Docker Úteis

```bash
# Visualizar logs
$ docker-compose logs -f

# Reiniciar serviços
$ docker-compose restart

# Rebuildar serviços
$ docker-compose up --build

# Remover todos os containers e volumes
$ docker-compose down -v
```

## Solução de Problemas

Se você encontrar problemas com as portas em uso:
1. Verifique se não há outros serviços usando as mesmas portas
2. Pare qualquer container em execução: `docker-compose down`
3. Limpe os containers antigos: `docker system prune`

## Contribuindo

1. Faça um fork do projeto
2. Crie sua branch de feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## Suporte

Para suporte e dúvidas, por favor abra uma issue no repositório.
