class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = Car.find(params[:car_id])
      if @booking.save
        redirect_to car_booking_path(@booking.car, @booking)
      else
        redirect_to car_path(:car_id), status: :unprocessable_entity
      end
  end

  def show
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
