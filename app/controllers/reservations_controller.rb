class ReservationsController < ApplicationController
  def index
    @reservations = policy_scope(Reservation).order(created_at: :desc)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path(@reservation)
    else
      render :new
    end
    authorize @reservation
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end
end

private

def reservation_params
  params.require(:reservation).permit(:location, :date, :friend_id, :user_id)
end
