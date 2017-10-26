class Api::VotesController < ApplicationController

  def create
    vote = Vote.new
    vote.voter_id = params[:voter_id]
    vote.recipient_id = params[:recipient_id]
    vote.value = params[:value]
    if vote.save
      user = User.find(vote.recipient_id)
      user.update_rep
      render json: user
    else
      render json: vote.errors
    end
  end

end