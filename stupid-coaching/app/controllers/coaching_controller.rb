class CoachingController < ApplicationController
  def answer
    @query = params[:query]
  end


  def ask
  end

  def coach_answer(query)
    @answer = params[:answer]

    if query[-1, 1] == "?"
      @answer = "Silly question, get dressed and go to work!"

    elsif query == "I am going to work right now!"
      @answer = ""

    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end


end