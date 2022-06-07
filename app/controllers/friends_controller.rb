class FriendsController < ApplicationController
  def index
    @friends = policy_scope(Friend).order(created_at: :desc)
  end

  def show
    @friend = Friend.find(params[:id])
    authorize @friend
  end

  def new
    @friend = Friend.new
    @friends = Friend.all
    authorize @friend
  end

  def create
    @friend = Friend.new(friend_params)
    @friends = Friend.all
    @friend.user = current_user
    if @friend.save
      redirect_to friend_path(@friend)
    else
      render :new
    end
    authorize @friend
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :age, :personnality, :hobby, :availability, :localisation, :event_category, :custumer_id)
  end
end
