class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id)
  end
end
