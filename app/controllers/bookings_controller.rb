class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
      if @booking.save
        redirect_to rooth_path
      else
        render :new, status: :unprocessable_entity
      end
  end

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
