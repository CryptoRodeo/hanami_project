module Web
  module Views
    module Dashboard
      class Index
        include Web::View
        require "net/http"
        def title
          'Admin Dashboard'
        end

        def ip_addr
          ip = Net::HTTP.get(URI("https://api.ipify.org"))
          ip
        end
      end
    end
  end
end
