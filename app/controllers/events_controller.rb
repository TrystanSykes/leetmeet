class EventsController < ApplicationController
  def index
    @events = Event.all
    @games = Game.all
    @categories = Category.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @games = Game.all
    @categories = Category.all
  end

  def create
    event = Event.new
    event.user_id = current_user.id
    event.title = params[:title]
    event.location = params[:location]
    event.start_at = params[:start_at]
    event.end_at = params[:end_at]
    event.game_id = params[:game_id].to_i
    event.category_id = params[:category_id].to_i
    event.about = params[:about]
    event.lat = params[:lat]
    event.long = params[:long]
    event.active = true
    if event.save
      redirect_to "/events/#{event.id}"
    else
      @errors = event.errors.full_messages
      @games = Game.all
      @categories = Category.all
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    # @event_start = @event.start_at.strftime('%Y-%m-%dT%H:%M')
    # @event_end = @event.end_at.strftime('%Y-%m-%dT%H:%M')
    @games = Game.all
    @categories = Category.all
  end

  def update
    event = Event.find(params[:id])
    event.user_id = current_user.id
    event.title = params[:title]
    event.location = params[:location]
    event.start_at = params[:start_at]
    event.end_at = params[:end_at]
    event.game_id = params[:game_id].to_i
    event.category_id = params[:category_id].to_i
    event.about = params[:about]
    event.lat = params[:lat]
    event.long = params[:long]
    if event.save
      redirect_to "/events/#{event.id}"
    else
      @event = Event.find(params[:id])
      @errors = event.errors.full_messages
      @games = Game.all
      @categories = Category.all
      render :edit
    end
  end

  def delete
    @event = Event.find(params[:id])
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to '/events'
  end
end
