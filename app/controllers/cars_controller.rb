class CarsController < ApplicationController

 def index
     @cars = Car.all
  end

  def new
    @place = Car.new
  end
  
  def create
    Car.create(car_params)
    redirect_to root_path
  end

   private

  def car_params
    params.require(:car).permit(:make, :model, :year, :color)
  end

end
