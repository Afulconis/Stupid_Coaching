class CoachingControllerController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def ask

  end
end



def coach_answer(your_message)
  if your_message == 'I am going to work right now!'
    return ""
  elsif your_message.strip.end_with? "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  if your_message.downcase == 'i am going to work right now!'
    return ""
  end

  intro = ""

  if your_message == your_message.upcase
    intro = "I can feel your motivation! "
  end

  classic_coach_message = coach_answer(your_message)
  return intro + classic_coach_message
end
