class FriendsController < ApplicationController
  def index
    @friends = policy_scope(Friend).order(created_at: :desc)

    @markers = @friends.geocoded.map do |friend|
      {
        lat: friend.latitude,
        lng: friend.longitude,
        info_window: render_to_string(partial: "info_window", locals: { friend: friend })
      }
    end
  end

  def show
    @friend = Friend.find(params[:id])
    @friends = Friend.all
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

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to friends_path
    authorize @friend
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :age, :personnality, :hobby, :availability, :localisation, :event_category, :user_id)
  end
end
