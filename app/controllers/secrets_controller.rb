class SecretsController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :index }
      format.json { render :json => Secret.all }
    end
  end
   #  
  # def new
  #   @secret = Secret.new
  # end
  # 
  def create
    @user = User.find(params[:user_id])
    @secret = Secret.new(params[:secret])
    @secret.recipient_id = @user.id
    @secret.author_id = current_user.id
    if @secret.save
      respond_to do |format|
        format.html { redirect_to users_url(@user) }
        format.js
        #format.json { render :json => @secret}
      end
    end
  end
end