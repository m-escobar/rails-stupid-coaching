class QuestionsControllerController < ApplicationController
  def ask
  end

  def answer
    your_message = params[:question]
    @msg = your_message
    msg = ""

    coach_answer_enhanced(your_message) if your_message == your_message.upcase

    if your_message == "I am going to work right now!" then msg = "Good Decision! Get out of here!"
    elsif your_message[your_message.length - 1] == "?" then msg = "Silly question, get dressed and go to work!"
    elsif your_message != "" then msg = "I don't care, get dressed and go to work!"
    end

    @answer = msg
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    msg =  ""

    if your_message == "I am going to work right now!".upcase then msg = ""
    elsif your_message[your_message.length - 1] == "?"
      msg = "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message != "" then msg = "I can feel your motivation! I don't care, get dressed and go to work!"
    end

    @answer = msg
    end
end
