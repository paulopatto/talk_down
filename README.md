# TalkDown


**Build**

- Master: [![Build Status](https://travis-ci.org/paulopatto/talk_down.svg?branch=master)](https://travis-ci.org/paulopatto/talk_down)  | Staging: [![Build Status](https://travis-ci.org/paulopatto/talk_down.svg?branch=staging)](https://travis-ci.org/paulopatto/talk_down)

> Foi o projeto de teste desenvolvido no meu processo seletivo quando entrei no R7.com

## Montando o projeto para desenvolver

Para trabalhar com esse projeto você vai precisar ter instalado o Ruby 2.1.3+ e NodeJS para poder baixar as dependencias de front-end com o Bower.

### Instalando dependencias ruby

Rode o comando `bundle install` para instalar as gems do projeto e depois você deve configurar o seu database.yml, pode usar o que tem de exemplo ai
`cp config/database.yml.example config/database.yml` e depois monte o banco com o comando `bundle exec rake db:setup`.

### Instalando dependencias NodeJS

- `npm install -g bower`
- `bower install`

### Rodando o projeto em modo desenvolvimento

- `bundle exec spring rails server`


<a title="Realtime application protection" href="https://www.sqreen.io/?utm_source=badge">
  <img style="width:109px;height:36px" src="https://s3-eu-west-1.amazonaws.com/sqreen-assets/badges/20171107/sqreen-dark-badge.svg" alt="Sqreen | Runtime Application Protection" />
</a>
