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
    user_guess = params["guess"].to_i
    if user_guess == 20
      p "You Win!"
      @response = "You win!"
    elsif user_guess > 20
      p "Too high!"
      @response = "Too high!"
    else user_guess < 20
      p "Too low!"
      @response = "Too low!"
    end
    render 'guess_number.json.jb'
  end

  def body_parameter
    @name = params[:name]
    render 'body_parameter.json.jb'
  end
end
