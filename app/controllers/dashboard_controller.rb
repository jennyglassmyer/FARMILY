class DashboardController < ApplicationController
  def index
    @animals = Animal.where(user: current_user)
    @requests = Booking.where(user: current_user)
  end

  def show
    @animal = Animal.find(params[:id])
  end
end
