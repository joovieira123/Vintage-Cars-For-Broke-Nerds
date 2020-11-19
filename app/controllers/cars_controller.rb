class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_car, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      sql_query = "cars.model @@ :query"
      @cars = Car.where(sql_query, query: "%#{params[:query]}%")
    else
      @cars = Car.all
    end
  end

  def show
    @markers = [{ lat: @car.latitude, lng: @car.longitude }]
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @car.update(car_params)

    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy
    redirect_to root_path
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :location, :price, :year, :description)
  end
end
