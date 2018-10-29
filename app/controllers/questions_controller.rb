class QuestionsController < ApplicationController

  def ask
  end

  def coach_answer(question)
    if question.downcase == "i am going to work right now!"
    "Great!"
    elsif question.end_with?("?")
    "Silly question, get dressed and go to work!"
    else
    "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @question = coach_answer(params[:question])
  end

end