class ApplicationController < ActionController::API

    def app_response(message: 'success', status: 200, data: nil)
        render json: {
            message: message,
            status: status,
            data: data
        }

    end
end
