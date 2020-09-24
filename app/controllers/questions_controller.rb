class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    @coach_answer = ''
    if @question.include? '?'
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      @coach_answer = "great!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
