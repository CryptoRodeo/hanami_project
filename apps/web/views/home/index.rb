1
# each action has a corresponding view, which is also defined by its class

#The action for this view is in # apps/web/controllers/home/index.rb
# apps/web/views/home/index.rb
# all this view does is render a template.
module Web
    module Views
      module Home
        class Index
          include Web::View
        end
      end
    end
  end