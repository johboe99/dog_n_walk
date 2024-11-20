class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @user = current_user.id
    @dog = Dog.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user.id
    @dog = Dog.find(params[:id])
    if @booking.save
      redirect_to bookings_path, notice: "You will be going on a walk soon."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
