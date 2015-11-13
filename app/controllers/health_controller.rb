class HealthController < ApplicationController

  before_action :require_admin, only:[:edit_questions]

  def index
    @answers = Answer.all
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.find(params[:id])
  end

  def edit_questions
    @question = Question.find(params[:id])
  end

end
