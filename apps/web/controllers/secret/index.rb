module Web
    module Controllers
        module Secret
            class Index
                include Web::Action

                expose :message
                def call(params)
                    @message = params[:message]
                end
            end
        end
    end
end
