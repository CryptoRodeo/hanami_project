module Web
  module Controllers
    module Dashboard
      class Index
        include Web::Action


        def call(params)
          puts "======================================"
        end
      end
    end
  end
end

