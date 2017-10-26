class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @games = Game.all
    @categories = Category.all
  end

  def create
    user = User.new
    user.username = params[:username]
    user.email = params[:email]
    user.password = params[:password]
    user.avatar_url = params[:avatar_url]
    user.bio = params[:bio]

    if user.save
      params[:game].keys.each do |game_id, val|
        game_interest = GameInterest.new(game_id: game_id, user_id: user.id)
        game_interest.save
      end

      params[:category].keys.each do |cat_id, val|
        category_interest = CategoryInterest.new(category_id: cat_id, user_id: user.id)
        category_interest.save
      end

      redirect_to "/users/#{user.id}"
    else
      @errors = user.errors.full_messages
      @games = Game.all
      @categories = Category.all
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @games = Game.all
    @categories = Category.all
  end

  def update
    user = User.find(params[:id])
    user.username = params[:username]
    user.avatar_url = params[:avatar_url]
    user.bio = params[:bio]

    if params[:game]
      user.game_ids = params[:game].keys
    else
      user.game_ids = []
    end

    if params[:category]
      user.category_ids = params[:category].keys
    else
      user.category_ids = []
    end

    if user.save
      redirect_to "/users/#{user.id}"
    else
      @errors = user.errors.full_messages
      @user = User.find(params[:id])
      @games = Game.all
      @categories = Category.all
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
