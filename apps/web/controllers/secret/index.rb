module Web
    module Controllers
        module Secret
            class Index
                include Web::Action

                def call(params)
                  self.body = params[:message]
                end
            end
        end
    end
end
