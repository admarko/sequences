class PuzzleController < ApplicationController

  def answers
    @rule = params["rule"]
    render("/answers.html.erb")
  end

  def guesses
    @num1 = params["first_number"].to_i
    @num2 = params["second_number"].to_i
    @num3 = params["third_number"].to_i

    @result = "NO"
    if @num1 < @num2 && @num2 < @num3
      @result = "YES"
    end

    render("/guesses.html.erb")
  end
end
