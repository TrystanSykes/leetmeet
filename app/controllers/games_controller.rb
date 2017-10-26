class GamesController < ApplicationController
  def new

  end

  def create
    game = Game.new
    game.game_logo = params[:logo]
    game.save
  end
end
