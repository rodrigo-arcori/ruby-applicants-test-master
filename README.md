# Teste Ruby para Candidatos

## Redis
  1. redis-server

## ENV
  1. export MODEL_URI=http://www.webmotors.com.br/carro/modelos

## Bundle
  1. bundle install

## Rake
  1. rake db:drop db:create db:migrate

## SideKiq
  1. MAKE_URI='http://www.webmotors.com.br/carro/marcas' bundle exec sidekiq  

## Rake
  1. rake webmotors:loadMake
  2. rake webmotors:loadModel
