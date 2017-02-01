class PuzzleController < ApplicationController

  def answers
    @rule = params["rule"]
    render("/answers.html.erb")
  end

  def guesses
    @num1 = params["first_number"].to_i
    @num2 = params["second_number"].to_i
    @num3 = params["third_number"].to_i

    @result = "No."
    if @num1 < @num2 && @num2 < @num3
      @result = "Yes!"
    end

    render("/guesses.html.erb")
  end
end
