class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if params[:ask]
      if params[:ask].end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      elsif params[:ask]=="I am going to work"
        @answer = "Great!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
