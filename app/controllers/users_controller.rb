class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user])
    redirect_to user_url(@user)
  end
  
  def show
    @user = User.find(params[:id])
    if signed_in?
      @secret = Secret.new(:author_id => current_user.id, :recipient_id => @user.id)
    end
  end
  
  def index
    @users = User.all
    @friendship = Friendship.new
    @friends = current_user.friends.order('id')
  end
end