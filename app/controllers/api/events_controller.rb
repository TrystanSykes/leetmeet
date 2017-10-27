class Api::EventsController < ApplicationController

  def index
    if params[:id]
      @event = Event.find(params[:id])
      render json: @event, :include => :game
    else
      @events = Event.all
      render json: @events, :include => :game
    end
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

end
