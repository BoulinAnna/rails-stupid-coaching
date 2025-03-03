class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # raise
    @ask = params[:ask] # on recup la question

    if params[:ask]

      if @ask == 'I am going to work'
        @answer = "Great"
      elsif @ask.end_with?('?')
        @answer = 'Silly question, get dressed and go to work!.'
      else
        @answer = "I don't care, get dressed and go to work!."
      end
    end
  end
end
