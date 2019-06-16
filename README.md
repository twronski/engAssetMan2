# Engineering Asset Management

This project was generated with Rails 5.2.3 and Ruby 2.6.2.

## Project Description

### Tecnologias:
+ Postgresql
+ Redis
+ Ruby on Rails
+ Material Design
+ Docker and Docker compose

### Bibliotecas Ruby (Gems):
+ Devise
+ Pundit
+ Rolify
+ Rails Admin
+ Better Error
+ Friendly_id
+ Mailcatcher
+ Sidekiq
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

+ Ajusta database.yaml para incluir : 
+ Start Docker: `systemctl start docker `
+ Installa Gems: `docker-compose run --rm app bundle install`
+ Cria base de dados:`docker-compose run --rm app bundle exec rake db:create db:migrate`

+ Atualiza Gemfile 
 [materialize issues](https://github.com/docker-library/ruby/issues/226)

+ Mailcatcher:
    + Instala as gems
    + Seta as configuraćões em development.rb
     `config.action_mailer.default_url_options = { :host => 'localhost:3000' }`
     `config.action_mailer.delivery_method = :smtp`
     `config.action_mailer.smtp_settings = { :address => 'mailcatcher', :port => 25 }`
    + Visite: `http://localhost:1080`

+ DEVISE:
    + Rails Generate Devise `docker-compose run --rm app bundle exec rails generate devise:install`
    + Devise generate User `docker-compose run --rm app bundle exec rails generate devise User`
    + Create additional fields in the migration
    + Do the migration: `docker-compose run --rm app bundle exec rails db:migrate `
    + Devise Generate Views `docker-compose run --rm app bundle exec rails generate devise:views`
    + Modelo para geradores incluindo o --user para nao ter problemas de acesso aos arquivos: `docker-compose run -it --rm --user "$(id -u):$(id -g)" app bundle exec rails g controller page index`
    
+ Models Generation
    + `docker-compose run --rm app bundle exec rails generate model EqptType name:string`
    + `docker-compose run --rm app bundle exec rails generate model EqptModel name:string`
    + `docker-compose run --rm app bundle exec rails generate model EqptFunction name:string`
    + `docker-compose run --rm app bundle exec rails generate model Equipment eqpt_type:references eqpt_model:references eqpt_function:references order_code:string{50} serial_number:string{50} lab_location:string{50} manuf_password:string{50} photo:string has_display:boolean is_available_for_borrow:boolean comments:text`
    + `docker-compose run --rm app bundle exec rails generate model Borrow equipment:references user:references request_start_date:datetime request_return_date:datetime start_date:datetime return_date:datetime status:integer location:string`
    + `docker-compose run --rm app bundle exec rails db:migrate`
    + [How to generate index columns and unique](https://www.leighhalliday.com/requiring-uniqueness-in-rails)
    + Make EqptType, EqptModel and EqptFunction name column unique.

```
class AddIndexToEqptType < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL
      CREATE UNIQUE INDEX type_lower_name_idx ON eqpt_types (LOWER(name));
    SQL
  end
end
```
    + Add columns asset_number, is_inspected, calibration_expiration
```
docker-compose run --rm app bundle exec rails generate migration AddDetailsToEquipment asset_number:string is_inspected:bool calibration_expiration:date
```
+ Create Association Between modules
+ Constraints
+ Check postgres database information

    ```
    docker-compose up
    docker-compose exec postgres psql -U postgres -> "After docker-compose up"
    commands
    \l -> list databases
    \c engAssetMan2_development -> connect to the table
    \d -> list table information
    \d+ -> list table information details
    ```
+ Create the seed
    + Save the database from excel (ods) file to csv
    + transform csv to hash using csv_to_hash.rb
    + Use the database as hashes as input for the seed file
       + Seed file implements basic error handling in Ruby but could have used ++ ActiveRecord::ActiveRecordError.
    + Create the initial database 


## TODO List

### Features
 + Create CRUD for all controllers
  + Model Equipmemnt
  + Function Equipmemnt
  + Type Equipmemnt
 + Implement admin controller actions

### Models

+ Create settings model
+ implment qrcode image creation when creating equipment model
+ Review validations and associations
+ Include Active Storage functionality on equipment model

### UI

- Remove materialize gem
- Install html template

### Other Todos
 + Implement qrcode generator services
 + Implement pdf generator with qrcoded
 + Implement pundit - roles
 + Implement workflow for equipment lending
 + Improv the seeding by reading the csv file
 + Implement background jobs and email services





