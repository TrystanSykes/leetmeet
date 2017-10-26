class Api::EventsController < ApplicationController

  def index
    if params[:id]
      @event = Event.find(params[:id])
      render json: @event
    else
      @events = Event.all
      render json: @events
    end
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

end
