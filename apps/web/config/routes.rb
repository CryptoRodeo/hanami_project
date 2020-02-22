# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
# apps/web/config/routes.rb
#point to the apps root url to the index action of the home controller.
=begin
<<<<<<< HEAD
         Name Method     Path                           Action

     root GET, HEAD  /                              Web::Controllers::Home::Index
    books GET, HEAD  /books                         Web::Controllers::Books::Index
 new_book GET, HEAD  /books/new                     Web::Controllers::Books::New
    books POST       /books                         Web::Controllers::Books::Create
=======
    Name       Method     Path                           Action

    root       GET,HEAD  /                              Web::Controllers::Home::Index
    books      GET,HEAD  /books                         Web::Controllers::Books::Index
    new_book   GET,HEAD  /books/new                     Web::Controllers::Books::New
    books      POST      /books                         Web::Controllers::Books::Create

>>>>>>> b9d7b9aace0990a170c19f4e230cba2a29779a00
=end

#index action of the home controller
root to: 'home#index'
resources :books, only: [:index, :new, :create]
<<<<<<< HEAD
get '/hello', to: ->(env) { [200,{}, ['Hello from hanami']] }

get '/dashboard/', to: 'dashboard#index'
=======
get '/hello', to: ->(env) { [200, {}, ['Hello from hanami']] }

get '/dashboard/', to: 'dashboard#index'
get '/secret/:message', to: 'secret#index'

>>>>>>> b9d7b9aace0990a170c19f4e230cba2a29779a00
