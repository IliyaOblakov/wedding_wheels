class CarsController < ApplicationController
  def index
      if params[:query].present?
        sql_query = "make ILIKE :query OR model ILIKE :query OR location ILIKE :query"
        @cars = Car.where(sql_query, query: "%#{params[:query]}%")
      else
        @cars = Car.all
        @markers = @cars.geocoded.map do |car|
          {
            lat: car.latitude,
            lng: car.longitude,
            info_window: render_to_string(partial: "info_window", locals: { car: car }),
            image_url: helpers.asset_url("wedding_wheels_logo.png")
          }
        end
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

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to cars_path(@car)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path, status: :see_other
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :photo_url, :price, :location)
  end
end
