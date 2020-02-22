module Web
  module Controllers
    module Books
      class Index
        include Web::Action

        expose :books

        def call(params)
          #book Repository is made, passed to the index page view.
          @books = BookRepository.new.all 
        end
      end
    end
  end
end
