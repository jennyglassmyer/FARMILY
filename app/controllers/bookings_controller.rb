require 'date'

class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
  def index
    @bookings = Booking.where("user = current_user")
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
      date_start: Date.new(params["booking"]["date_start(1i)"].to_i, params["booking"]["date_start(2i)"].to_i, params["booking"]["date_start(3i)"].to_i),
      date_end: Date.new(params["booking"]["date_end(1i)"].to_i, params["booking"]["date_end(2i)"].to_i, params["booking"]["date_end(3i)"].to_i),
      animal: @animal,
      user: @user
    )
    @total_price = calculate_total(@booking.date_start, @booking.date_end, @booking.animal.price_per_day)
    @booking.total_price = @total_price
    @booking.pending!
    if @booking.save
      redirect_to animal_booking_path(@animal, @booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to animal_bookings_path(@booking.animal), notice: 'Booking was canceled.'
  end

  def accept
    @booking = Booking.find(params[:animal_id])
    @booking.accepted!
    redirect_to dashboard_index_path, notice: 'Booking confirmed!'
  end

  def decline
    @booking = Booking.find(params[:animal_id])
    @booking.declined!
    redirect_to dashboard_index_path, notice: 'Booking declined!'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(params["booking"]["date_start(1i)"].to_i, params["booking"]["date_start(2i)"].to_i, params["booking"]["date_start(3i)"].to_i, params["booking"]["date_end(1i)"].to_i, params["booking"]["date_end(2i)"].to_i, params["booking"]["date_end(3i)"].to_i)
  end

  def calculate_total(date_start, date_end, price_per_day)
    num_of_days = date_end - date_start
    num_of_days * price_per_day
  end
end
