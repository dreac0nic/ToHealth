class HealthController < ApplicationController
  before_action :require_admin, only:[:edit_questions]

  def index
    @answers = Answer.where(:user_id => @user_id)
    @questions = Question.all
  end

  def show
    @question = Question.all
    @answer = Answer.where(:user_id => @user_id)
  end

  def edit_questions
    @question = Question.all
  end

end
