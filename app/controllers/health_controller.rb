class HealthController < ApplicationController

  before_action :require_admin, only:[:edit_questions]

  def index
#    @answers = Answer.where(session[:user_id_id])#(:user_id => @user_id)
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
#    @answer = Answer.where(session[:user_id_id])
  end

  def edit_questions
    @question = Question.all
  end

end
