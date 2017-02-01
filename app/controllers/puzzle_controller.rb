class PuzzleController < ApplicationController

  def answers

    render("/answers.html.erb")
  end

  def guesses

    render("/guesses.html.erb")
  end
end
