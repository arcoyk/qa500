class QuestionsController < ApplicationController
  def index
  	qinit
  	@questions = Question.all
  	@question = Question.new
  end

  def show
  	@question = Question.find(params[:id])
  end

  def create
  	@question = Question.create(question_params)
  	redirect_to question_path(@question)
  end

  def new
  	@question = Question.new
  end

  def qinit
  	if Question.find(1).answers.length == 0
	  	q1 = Question.find(1)
	  	q2 = Question.find(2)
	  	q3 = Question.find(3)
	  	q4 = Question.find(4)

	  	a1 = Answer.find(1)
		  a2 = Answer.find(2)
	  	a3 = Answer.find(3)
	  	a4 = Answer.find(4)
	  	a5 = Answer.find(5)
	  	a6 = Answer.find(6)
	  	a7 = Answer.find(7)
	  	
	  	q1.answers.push a1
	  	q1.answers.push a2
	  	q1.answers.push a3

	  	q2.answers.push a4
	  	q2.answers.push a5

	  	q3.answers.push a6

	  	q4.answers.push a7

      Question.all.each do |q|
        q.vote = Vote.create()
      end

      Answer.all.each do |a|
        a.vote = Vote.create()
      end
    end
	end

  private
  def question_params
  	params.require('question').permit('content', 'yes_option', 'no_option')
  end
end
