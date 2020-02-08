# Each action in Hanami is defined by a single class

#The view for this action is # apps/web/views/home/index.rb

module Web
    module Controllers
      module Home
        class Index
          include Web::Action
  
          def call(params)
          end
        end
      end
    end
  end