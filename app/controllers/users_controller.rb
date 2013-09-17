class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user])
    sign_in @user
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
    # gives me a "friendship" to enter into friendship delete forms so it routes
    # properly, never changes since the delete controller only worries about
    # the user_id
    @fake_friendship = Friendship.find(51)
  end
end