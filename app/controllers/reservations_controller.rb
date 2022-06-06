class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
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
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end
end

private

def reservation_params
  params.require(:reservation).permit(:location, :date, :friend_id, :customer_id)
end
