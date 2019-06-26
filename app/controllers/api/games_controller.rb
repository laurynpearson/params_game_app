class Api::GamesController < ApplicationController
  def fun_game
    render 'game.json.jb'
  end
end
