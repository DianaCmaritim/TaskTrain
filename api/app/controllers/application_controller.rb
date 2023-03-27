class ApplicationController < ActionController::API

    include ActionController::Cookies

    rescue_from StandardError, with: :standard_error

    # has data into web token

    def encode(uid,email)

        payload ={
            data: {
                uid: uid,
                email: email
            },
            exp: Time.now.to_i + (6*3600)
        }

        begin
        JWT.encode(payload, ENV['task_cargo_key'], 'HS256')
        rescue  JWT::EncodeError => e 
            app_response(message: "failed", status: 400, data: {info: "Something went wrong. PLease try againkjh\\"})


        end
    end


    # unhash the token

    def decode(token)
        begin
        JWT.decode(token, ENV['task_cargo_key'], true, {algorith: 'HS256'})
        rescue JWT::DecodeError => e 
            app_response(message: "failed", status: 401, data: {info: "Session expired. Please login again"})
        end

    end

    # Verify auth

    def verify_auth
        auth_headers = request.headers['Authorization']
        if !auth_headers 
            app_response(message: "failed", status: 401, data: {info: "Your request is not authorized"})
        else
        token = auth_headers.split(' ')[1]
        decode(token)[0]['data']
        save_user_id(token)
        # render json: {
        #     data: decode(token)[0]['data']
        # }
        end
    end

    # request = {
    #     headers: {
    #         Authorization: 'Bearer token_here'
    #     },
    #     body:{

    #     },
    #     method: 'GET'

    # }


    def app_response(message:'success', status: 200, data: nil)
        render json: { 
            message: message, 
            data: data}, status: status 
    end

    # store user id in session

    def save_user(id)
        session[:uid] = id
        session[:expiry] = 6.hours.from_now
    end


    #  delete user id in session
    def remove_user
        session.delete(:uid)
        session[:expiry]= Time.now
    end

    

    # save user's id
    def save_user_id
        @uid = decode(token)[0]["data"]["uid"].to_i
    end

    #  get user session
    
    def user_session 
        User.find(session[:uid].to_i)
    end


    # check for expiry of ourr session

    def session_expired? 
        session[:expiry] ||= Time.now
        time_diff = (Time.parse(session[:expiry]) - Time.now).to_i
        
        unless time_diff > 0
            app_response(message: "failed", status: 401, data: {info: "Session expired. Please login again"})
        end
   
    end


    # def uid 
    #     session[:uid].to_i
    # end

    # find user

    def user 
        User.find(session[:uid].to_i)
    end


    # rescue all common errors

    def standard_error(exception)
        app_response(message: "Failed", data: {info: exception.message}, status: :unprocessable_entity)
    end



end
