class TodoController < ApplicationController

  before_action :require_user, only: [:index, :show]

  def index
    @todo = Todo.all
  end

  def show
#    @todo = Todo.find(params[:user_id])
  end

end
