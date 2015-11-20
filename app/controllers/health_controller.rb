class HealthController < ApplicationController
  before_action :require_admin, only:[:edit_questions]

  def index
    @answers = Answer.where(:user_id => session[:user_id_id])
    @questions = Question.all
  end

  def show
    @question = Question.all
    @answer = Answer.where(:user_id => session[:user_id_id])
  end

  def edit_questions
    @question = Question.all
  end

  def new
    @answer = Answer.new
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

end
