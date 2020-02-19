module Web
  module Views
    module Dashboard
      class Index
        include Web::View

        def title
          'Admin Dashboard'
        end
      end
    end
  end
end
