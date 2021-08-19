class DashboardController < ApplicationController
  def index
    @animals = Animal.where(user: current_user)
  end
end
