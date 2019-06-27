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
    guess = params["user_guess"].to_i
    if guess == 20
      p "You Win!"
      @response = "You win!"
    elsif guess > 20
      p "Too high!"
      @response = "Too high!"
    else guess < 20
      p "Too low!"
      @response = "Too low!"
    end
    render 'guess_number.json.jb'
  end

  def url_segment_method
    user_input = params["guess"].to_i
    if user_input == 40
      p "You win!"
      @note = "You win!"
    elsif user_input > 40
      p "Too high!"
      @note = "Too high!"
    else user_input < 40
      p "Too low!"
      @note = "Too low!"
    end
    render 'segment_view.json.jb'
  end
end
