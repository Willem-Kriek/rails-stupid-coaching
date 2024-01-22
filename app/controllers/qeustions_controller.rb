class QeustionsController < ApplicationController
  STOP_MESSAGE = 'I am going to work'

  def answer
    question = params[:questions]

    if question == STOP_MESSAGE || question == STOP_MESSAGE.upcase
      @answer = ''
    elsif question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end

  def ask
  end
end

# read the qeustion drom params
# compute an instance variable @answer for the view to display
