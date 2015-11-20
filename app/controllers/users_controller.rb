class UsersController < ApplicationController

    before_action :require_admin, only: [:index, :edit, :show]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id_id] = @user.id
            redirect_to '/todos'
        else
            redirect_to '/signup'
        end
    end

    def edit
    end

    private
    def user_params
        params.require(:user).permit(:userName, :firstName, :lastName, :password)
    end

end
