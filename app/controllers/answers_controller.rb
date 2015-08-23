class AnswersController < ApplicationController
  def index
  end

  def show
  end

  def create
  	question = Question.find(params[:answer][:question_id])
  	answer = Answer.create(answer_params)
  	question.answers.push answer
  	question.save
  	redirect_to question_with_yesno_path({:id => question.id, :yesno => answer.anstype})
  end

  def like
  	a = Answer.find(params[:id])
  	a.like += 1
  	a.save
  	redirect_to :back
  end

  private
  def answer_params
  	params.require('answer').permit('content', 'anstype')
  end
end
