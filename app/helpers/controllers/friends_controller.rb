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

  def create
    @friend = Friend.new(friend_params)
    @friend.save
    redirect_to friend_path(@friend)
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(friend_params)
    redirect_to friend_path(@friend)
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :age, :personnality, :hobby, :availability, :localisation, :event_category, :user_id)
  end
end
