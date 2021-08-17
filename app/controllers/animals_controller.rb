class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_animal, only: [:show]

  def index
    @animals = Animal.all
  end

  def show
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
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
