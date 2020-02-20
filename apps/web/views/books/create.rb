# apps/web/views/books/create.rb
module Web
  module Views
    module Books
      class Create
        include Web::View
        template 'books/new' # render the form
      end
    end
  end
end