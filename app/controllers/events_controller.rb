class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new

  end

  def create
    event = Event.new
    event.user_id = params[:user_id]
    event.title = params[:title]
    event.location = params[:location]
    event.game_id = params[:game_id]
    event.category_id = params[:category_id]
    event.about = params[:about]
    event.active = true
    if event.save
      redirect_to "/events/#{event.id}"
    else
      @errors = event.errors.full_messages
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.user_id = params[:user_id]
    event.title = params[:title]
    event.location = params[:location]
    event.game_id = params[:game_id]
    event.category_id = params[:category_id]
    event.about = params[:about]
    if event.save
      redirect_to "/events/#{event.id}"
    else
      @errors = event.errors.full_messages
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
