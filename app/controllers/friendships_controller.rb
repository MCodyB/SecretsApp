class FriendshipsController < ApplicationController
  def create
    @friend = User.find(params[:user_id])
    @friendship = current_user.friendships.build

     @friendship.friend_id = @friend.id
    @friendship.save
    respond_to do |format|
      # format.html { redirect_to users_url }
      format.js
    end
  end
  
  def destroy
    #@friendship = Friendship.find(params[:id])
    @friendship = current_user.friendships.find_by_friend_id(params[:user_id])
    @friendship.destroy
    respond_to do |format|
      format.js
    end
  end
end