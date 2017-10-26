class GamesController < ApplicationController
  def new

  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    game = Game.new
    game.name = params[:name]
    game.logo = params[:image]
    game.save
  end
end
