class Api::AttendeesController < ApplicationController

  def create
    attendee = Attendee.new
    attendee.user_id = params[:user_id]
    attendee.event_id = params[:event_id]
    if attendee.save
      render json: attendee
    else
      render json: attendee.errors
    end
  end 

end