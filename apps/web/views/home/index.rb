
# each action has a corresponding view, which is also defined by its class

#The action for this view is in # apps/web/controllers/home/index.rb
# apps/web/views/home/index.rb
module Web
    module Views
      module Home
        class Index
          include Web::View
        end
      end
    end
  end