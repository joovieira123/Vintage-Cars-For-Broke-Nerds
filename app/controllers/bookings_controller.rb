class BookingsController < ApplicationController

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    if @booking.save
      redirect_to car_path(@car)
    else
      @booking = Booking.new
      render :new
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @car = @booking.car
    @booking.destroy

    redirect_to car_path(@car)
  end

  def booking_params
    params.require(:booking).permit(:user_id, :car_id)
  end
end
