class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(params[:question])
  end

  def coach_answer(question)
    if question.downcase == "i am going to work" || question.downcase == "i'm going to work"
      "Great!"
    elsif question.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end



