class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @friend = Friend.find(params[:friend_id])
    @review.friend = @friend
    if @review.save
      redirect_to friend_path(@friend)
    else
      render 'friends/show'
    end
    authorize @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to friend_path(@review.friend)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
