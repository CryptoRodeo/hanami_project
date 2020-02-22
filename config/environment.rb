require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/bookshelf'
require_relative '../apps/web/application'
require_relative '../apps/admin/application'
<<<<<<< HEAD
=======
require "hanami/middleware/body_parser"

>>>>>>> b9d7b9aace0990a170c19f4e230cba2a29779a00

Hanami.configure do
  mount Admin::Application, at: '/admin'
  mount Web::Application, at: '/'

<<<<<<< HEAD
=======
  #Middleware
  middleware.use Hanami::Middleware::BodyParser, :json

>>>>>>> b9d7b9aace0990a170c19f4e230cba2a29779a00
  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/bookshelf_development.sqlite3'
    #    adapter :sql, 'postgresql://localhost/bookshelf_development'
    #    adapter :sql, 'mysql://localhost/bookshelf_development'
    #
    adapter :sql, "postgresql://bryan:root@localhost/hanami_bookshelf_dev"

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/bookshelf/mailers'

    # See https://guides.hanamirb.org/mailers/delivery
    delivery :test
  end

  environment :development do
    # See: https://guides.hanamirb.org/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV.fetch('SMTP_HOST'), port: ENV.fetch('SMTP_PORT')
    end
  end
end
