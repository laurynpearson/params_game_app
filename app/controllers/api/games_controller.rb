class Api::GamesController < ApplicationController
  def fun_game
    p params
    name = params["name"]
    first_character = params["name"][0].downcase

    if first_character == 'a'
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "hi!"
    end
    render 'game.json.jb'
  end

  def guess_number
    render 'guess_number.json.jb'
  end
end


# Next make it so that if your name begins with the letter “a”, there’s a message that appears saying, “Hey, your name starts with the first letter of the alphabet!”

# • Create the guess-a-number game using query parameters. (Reminder: This is the game where the app chooses a number between 1 and 100, and the user has to guess what it is. It also tells the user after each guess whether to guess higher or lower.) One caveat: Instead of having the program choosing a random number in advance, just choose a specific number, such as 36. One other gotcha: All params are initially treated as strings, so you’ll have to do some conversion to integer to work around that.