class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    if @friend.update(friend_params)
      redirect_to friends_path
    else
      render :edit
    end
  end

  def create
    @friend = Friend.new(friend_params)
    #token exists
    # how does the mailer make a mail
    @friend.user_id = current_user.id

    if @friend.save
      redirect_to friends_path

    else
      render :new
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to friends_path
  end

  private

  def friend_params
    params.require(:friend).permit(:email, :phone_number, :name, :token)
  end
end
