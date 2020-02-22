module Web
  module Views
    module Dashboard
      class Index
        include Web::View
<<<<<<< HEAD

        def title
          'Admin Dashboard'
        end
=======
        require "net/http"
        def title
          'Admin Dashboard'
        end

        def ip_addr
          ip = Net::HTTP.get(URI("https://api.ipify.org"))
          ip
        end
>>>>>>> b9d7b9aace0990a170c19f4e230cba2a29779a00
      end
    end
  end
end
