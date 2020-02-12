# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
# apps/web/config/routes.rb
#point to the apps root url to the index action of the home controller.
root to: 'home#index'
get '/books', to: 'books#index'
get '/books/new', to: 'books#new'
