class SessionsController < ApplicationController

  def new
  end

  def create
    @user=User.find_by_userName(params[:session][:userName])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id_id] = @user.id
      redirect_to '/todos'
#      redirect_to '/todo/' + session[:user_id].to_s
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id_id] = nil
    redirect_to '/'
  end

end
