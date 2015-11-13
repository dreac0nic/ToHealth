class TodoController < ApplicationController
    before_action :all_todos, only: [ :create ]
    before_action :require_user, only: [:show]
    before_action :require_admin, only: [:show_all]
    respond_to :html, :js

    def create
#        @todo = Todo.create( todo_params )
    end

    def destroy

    end

    def index
        @todos = Todo.all
    end

    def show
        @todos = Todo.where( :user_id => session[ :user_id_id ] )
    end

    private

    def all_usr_todos
        @todos = Todo.where( :user_id => params[ :id ] )
    end

    def todo_params
        params.require( :todo ).permit( :name )
    end
end
