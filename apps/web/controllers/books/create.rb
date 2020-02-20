# apps/web/controllers/books/create.rb
module Web
  module Controllers
    module Books
      class Create
        include Web::Action

        expose :book #passes this data to the view
        
        # Hanami controller actions can use the params class method to define acceptable incoming parameters.
        #whats passed through the post request
        params do
          required(:book).schema do
            required(:title).filled(:str?)
            required(:author).filled(:str?)
          end
        end

        def call(params)
          if params.valid?
            #test to see if if the values passed are correct
            puts "~~~~~~~~~ POST REQUEST PARAMS ~~~~~~~~~~~~" 
            puts params[:book]
            redirect_to routes.books_path # same as redirecting to '/books'
          else
            self.status = 422
          end
        end
      end
    end
  end
end