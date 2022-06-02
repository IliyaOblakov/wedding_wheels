class CarsController < ApplicationController
  def index
      if params[:query].present?
        sql_query = "make ILIKE :query OR model ILIKE :query OR location ILIKE :query"
        @cars = Car.where(sql_query, query: "%#{params[:query]}%")
      else
        @cars = Car.all
      end
  end

  def show
    @booking = Booking.new
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :photo_url, :price, :location)
  end

end
