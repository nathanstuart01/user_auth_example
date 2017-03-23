class CarsController < ApplicationController
  before_action :set_car, except: [:index, :new, :create]

  def index
    @cars = current_user.cars
  end

  def show
  end

  def new
    @car = current_user.cars.new
  end

  def create
    @car = current_user.cars.new(car_params)
    if @car.save
      flash[:success] = 'Car Created!'
      car_path(@car)
    else
      # @car.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      flash[:success] = 'Car Updated!'
      redirect_to car_path(@car)
    else
      # @car.errors.full_messages
      render :edit
    end
  end

  def destroy
    @car.destroy
    flash[:success] = 'Car Removed!'
    redirect_to cars_path
  end

private

  def set_car
    current_user.cars.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:make, :model, :year, :price)
  end

end
