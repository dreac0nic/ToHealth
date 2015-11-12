class TodoController < ApplicationController
    before_action :all_todos, only: [ :index, :create ]
    respond_to :html, :js

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.create( todo_params )
    end

    def destroy
    end

    private

    def all_todos
        @todos = Todo.where( :user_id => params[ :id ] )
    end

    def todo_params
        params.require( :todo ).permit( :name )
    end
end
