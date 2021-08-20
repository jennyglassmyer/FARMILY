class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  # before_action :set_animal, only: [:show]

  def index
    if params[:query].present?
      @animals = Animal.search_by_species(params[:query])
      if params[:search].present?
        @animals = @animals.where(care_level: params[:search])
      end
    else
      @animals = Animal.all
      if params[:search].present?
        @animals = @animals.where(care_level: params[:search])
      end
      @previous_search = ''
    end
  end

  def show
    @animal = Animal.find(params[:id])
    @markers = [{ lat: @animal.latitude, lng: @animal.longitude }]
    @booking = Booking.new
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    @animal.address = current_user.address
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(
      :name,
      :species,
      :breed,
      :gender,
      :personality,
      :description,
      :care_level,
      :age,
      :price_per_day,
      :care_instructions,
      :photo,
      :title, :body, photos: []
      )
  end
end
