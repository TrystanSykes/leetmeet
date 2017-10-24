class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new

  end

  def create
    user = User.new
    user.username = params[:username]
    user.email = params[:email]
    user.password = params[:password]
    user.avatar_url = params[:avatar_url]
    user.bio = params[:bio]
    if user.save
      redirect_to "/users/#{user.id}"
    else
      @errors = user.errors.full_messages
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.username = params[:username]
    user.avatar_url = params[:avatar_url]
    user.bio = params[:bio]
    if user.save
      redirect_to "/users/#{user.id}"
    else
      @errors = user.errors.full_messages
      render :edit
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end
end
