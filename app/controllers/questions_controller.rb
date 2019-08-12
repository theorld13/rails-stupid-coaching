class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # will need to read the question from params and compute an instance variable @answer for the view to display.
    @question = params[:question]

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
