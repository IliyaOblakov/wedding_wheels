class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = Car.find(params[:car_id])
    if @booking.save && current_user.present?
      redirect_to my_bookings_path(@booking.car, @booking)
    else
      redirect_to new_user_session_path
    end
  end

  def show
    @bookings = Booking.all
  end

  def my_bookings
    @my_bookings = Booking.where(user_id: current_user.id)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to car_bookings(car)
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
