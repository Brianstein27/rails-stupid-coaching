class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:user_input]
    @answer = coach_answer(params[:user_input])
  end

  def coach_answer(your_message)
    return 'Silly question, get dressed and go to work!' if your_message.include?('?')
    return '' if your_message == 'I am going to work right now!'

    "I don't care, get dressed and go to work!" if your_message
  end
end
