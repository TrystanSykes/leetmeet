class Api::AttendeesController < ApplicationController

  def create
    attendee = Attendee.new
    attendee.user_id = params[:user_id]
    attendee.event_id = params[:event_id]
    username = attendee.user.username
    if attendee.save
      render json: {username: username, user_id: attendee.user_id}
    else
      render json: attendee.errors
    end
  end 

end