class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
  end

  private

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  def car_params
    params.require(:car).permit(:model, :location)
  end
end
