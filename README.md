<h1 align="center">Vecterinary Project</h1>

<p align="center">
  <img alt="Principal linguagem do projeto" src="https://img.shields.io/github/languages/top/EduardoJesusx/vecterinary-project?color=56BEB8">

  <img alt="Tamanho do repositório" src="https://img.shields.io/github/repo-size/EduardoJesusx/vecterinary-project?color=56BEB8">

  <img alt="Licença" src="https://img.shields.io/github/license/EduardoJesusx/vecterinary-project?color=56BEB8">
</p>

 <h4 align="center"> 
	🚧  Vecterinary Project 🚀 Em construção...  🚧
</h4> 

<hr>

<p align="center">
  <a href="#dart-sobre">Sobre</a> &#xa0; | &#xa0; 
  <a href="#sparkles-funcionalidades">Funcionalidades</a> &#xa0; | &#xa0;
  <a href="#rocket-tecnologias">Tecnologias</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-pré-requisitos">Pré requisitos</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-começando">Começando</a> &#xa0; | &#xa0;
  <a href="#memo-licença">Licença</a> &#xa0; | &#xa0;
  <a href="https://github.com/EduardoJesusx" target="_blank">Autor</a>
</p>

<br>

## :dart: Sobre ##

Sobre o seu projeto

## :rocket: Tecnologias ##

As seguintes ferramentas foram usadas na construção do projeto:

- [Ruby on Rails](https://rubyonrails.org/)

## :white_check_mark: Pré requisitos ##

- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker-compose](https://docs.docker.com/compose/)

## :checkered_flag: Começando ##

Clone o projeto em sua pasta local

```bash
git clone https://github.com/EduardoJesusx/Vecterinary-project
```

Construa a imagem do docker

```bash
docker-compose build
```
Inicie o container com bash
```bash
docker-compose run --service-ports web bash
```

instale as dependencias

```bash
bundle install
```

crie o banco e faça as migrations

```bash
rake db:create
rake db:migrate
```

inicie o servidor rails
```bash
rails s -b 0.0.0.0
```

Acesse a aplicação: 
- [localhost:3000](https://localhost:3000)

## :memo: Licença ##

Este projeto está sob licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.


Feito com :heart: por <a href="https://github.com/EduardoJesusx" target="_blank"> Eduardo Silveira</a>

&#xa0;

<a href="#top">Voltar para o topo</a>
