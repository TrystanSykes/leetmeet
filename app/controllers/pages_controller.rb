class PagesController < ApplicationController
  def index
    @events = Event.all
    @games = Game.all
    @categories = Category.all
  end
end
