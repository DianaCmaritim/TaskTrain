class TodosController < ApplicationController
    # before_action :verify_auth
    before_action :session_expired?
    rescue_from StandardError, with: :standard_error


    def create

       todo = user.todos.create(todo_params)
       if todo.valid?
        app_response(status: :created, data: todo)
       else
        app_response(status: :unprocessable_entity, data: todo.errors, message: "failed")
       end
    end


    def update

        todo = user.todos.find(params[:id]).update(todo_params)
        if todo
            app_response(data: {info: 'updated todo successfully'})
        else
            app_response(data: {info: 'not updated'}, message: "failed", status: :unprocessable_entity )
        end

    end

    def destroy

        user.todos.find(params[:id]).destroy
        app_response(message: 'success', data: {info: ""}, status: 204)


    end



    def index

        todos = user.todos.all
        app_response(message: 'All todos', data: todos)

    end



    private

    def todo_params
        params.permit(:title, :description, :status, :priority)
    end


end
