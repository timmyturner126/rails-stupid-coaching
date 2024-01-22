class AnswersController < ApplicationController
  def answer
  end

  def answer
    question = params[:question]
    @answer = coach_answer(question)
  end

  layout 'application'

  private

  def coach_answer(question)
    if question == 'i am going to work'
      'Great!'
    elsif question && question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
