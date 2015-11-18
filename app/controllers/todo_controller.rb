class TodoController < ApplicationController

  before_action :require_user, only: [:index, :show]
  before_action :require_admin, only: [:show_all]

  def index
    @todo = Todo.all
  end

  def show
#    @todo = Todo.find(params[:user_id])
  end

  def show_all
    
  end

end
