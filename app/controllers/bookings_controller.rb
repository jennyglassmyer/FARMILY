class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  def index
  end

  def show
    @animal = Animal.find(params[:animal_id])
  end
  
  def new
    @booking = Booking.new
    @animal = Animal.find(params[:animal_id])
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @user = current_user
    @booking = Booking.new(
      date_start: booking_params[:date_start],
      date_end: booking_params[:date_end],
      total_price: booking_params[:total_price],
      animal: @animal,
      user: @user
    )
    if @booking.save
      redirect_to animal_booking_path(@animal, @booking)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :total_price)
  end
end
