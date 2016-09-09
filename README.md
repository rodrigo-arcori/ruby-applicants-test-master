# Teste Ruby para Candidatos

## Redis
  1. redis-server

## Var ENV
  1. export MODEL_URI=http://www.webmotors.com.br/carro/modelos

## Bundle
  1. bundle install

## DB
  1. rake db:drop db:create db:migrate

## SideKiq
  1. MAKE_URI='http://www.webmotors.com.br/carro/marcas' bundle exec sidekiq  

## Task
  1. rake webmotors:loadMake
  2. rake webmotors:loadModel
  3. rake spec

## ROR
  1. rails s
