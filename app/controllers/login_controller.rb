class LoginController < ApplicationController

  def index
    @login = User.all
  end

  def show
  end

  def new
    @login = User.new
  end

  def edit
  end

  def create
    @login = User.new(userParams)
    if @login.save
      session[:user_id] = @login.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
  def userParams
    params.require(:user).permit(:userName, :firstName, :lastName, :password)
  end

end
