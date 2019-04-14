# Engineering Asset Management

This project was generated with Rails 5.2.3 and Ruby 2.6.2.

## Project Description

### Tecnologias:
+ Postgresql
+ Redis
+ Ruby on Rails
+ Material Design

### Bibliotecas Ruby (Gems):
+ Devise
+ Pundit
+ Rolify
+ Rails Admin
+ Better Error
+ Friendly_id
+ Active Storage

### Repositório:
+ Github

### Ambiente de Desenvolvimento:
+ Docker
+ Docker Compose
+ Visual Studio Code


## Sintetização da Idéia
Este aplicativo permitirá a gestão dos ativos do laboratório da Grid Automation LATAM. Isto inclui uma base de dados com informação de todos os itens do laboratório, o controle da localização dos equipamentos, empréstimo e devolução dos mesmos. Além disso, cada equipamento físico possuirá um QR code pelo qual será possível acessar as informações disponíveis no aplicativo.

## Funções do Projeto
+ Permite criar e gerenciar um banco de dados com todos os equipamentos do laboratório. Este gerenciamento inclui a   geração de “QR Codes” para cada página “view” do equipamento.
+ Permite fazer a gestão de empréstimo e devoluções de  equipamentos do laboratório, com múltiplos papéis (usuários   normais e administradores).  Implementar-se-á uma gestão de workflow para fazer seguimento do status do empréstimo, sendo cada empréstimo e devolução aprovada pelo administrador do sistema.
+ Permite verificar informações gerais de cada equipamento através do escaneamento de um QR code que estará fixado ao equipamento fixo.
+ Permite visualizar lista de equipamentos emprestados, disponíveis para empréstimo, devolução atrasada, etc…
+ Permite gerenciar o histórico de empréstimos efetuados, inclusive com filtro por usuário.
+ Permite criar alertas por emails para lembretes sobre equipamentos atrasados, necessidade de devolução de equipamentos, etc…
+ Permite o gerenciamento de usuários, papéis , e adição de novos usuários.


## Passos para a criação do projeto
+ Create a new project using Ruby image:  `sudo docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app ruby /bin/bash -c "gem install rails ; rails new engAssetMan2 --skip-bundle --database=postgresql"`
