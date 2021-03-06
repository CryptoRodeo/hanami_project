# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
# apps/web/config/routes.rb
#point to the apps root url to the index action of the home controller.
=begin
    Name       Method     Path                           Action

    root       GET,HEAD  /                              Web::Controllers::Home::Index
    books      GET,HEAD  /books                         Web::Controllers::Books::Index
    new_book   GET,HEAD  /books/new                     Web::Controllers::Books::New
    books      POST      /books                         Web::Controllers::Books::Create

=end

#index action of the home controller
root to: 'home#index'
resources :books, only: [:index, :new, :create]
get '/hello', to: ->(env) { [200, {}, ['Hello from hanami']] }

get '/dashboard/', to: 'dashboard#index'
get '/secret/:message', to: 'secret#index'

