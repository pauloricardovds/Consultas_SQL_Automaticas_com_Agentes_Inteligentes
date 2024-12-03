# Consultas SQL Automáticas com Agentes Inteligentes

Este projeto utiliza agentes baseados em IA para realizar consultas SQL em um banco de dados SQL Server. A partir de perguntas em linguagem natural, o sistema gera consultas SQL automaticamente e retorna as respostas em linguagem simples.

## Pré-requisitos

- **SQL Server**: Você deve ter o SQL Server instalado. Isso pode ser feito através de um ambiente local ou utilizando Docker para rodar um container SQL Server.
- **Conta Groq**: É necessário criar uma conta no [Groq](https://console.groq.com/) para acessar e usar o modelo `llama70b`.

## Tecnologias Utilizadas

- **SQL Server**: Banco de dados relacional utilizado.
- **Docker**: Para containerização do banco de dados SQL Server.
- **Langchain**: Framework utilizado para trabalhar com LLMs e integração com bancos de dados.
- **CrewAI**: Plataforma para criação e gerenciamento de agentes inteligentes.
- **pyodbc**: Biblioteca Python para conexão com o SQL Server.

## Configuração e Uso

### Passo 1: Instalação do SQL Server

- **Opção 1: Instalação Local**: Instale o SQL Server diretamente em sua máquina seguindo as instruções da Microsoft.
- **Opção 2: Docker**: Para utilizar o Docker, execute os seguintes comandos:

