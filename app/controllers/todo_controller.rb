class TodoController < ApplicationController
    before_action :all_todos, only: [ :index, :create ]
    before_action :require_user, only: [:index, :show]
    respond_to :html, :js

<<<<<<< HEAD
    def new
        @todo = Todo.new
    end
=======
  before_action :require_user, only: [:index, :show]
  before_action :require_admin, only: [:show_all]
>>>>>>> origin/Authorization

    def create
        @todo = Todo.create( todo_params )
    end

    def destroy
    end

<<<<<<< HEAD
    private

    def all_todos
        @todos = Todo.where( :user_id => params[ :id ] )
    end

    def todo_params
        params.require( :todo ).permit( :name )
    end
=======
  def show_all
    
  end

>>>>>>> origin/Authorization
end
