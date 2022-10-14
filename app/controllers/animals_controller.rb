class AnimalsController < ApplicationController
  def index 
    animal = Animals.all
    render json: animals
  end

  def show
    animal = Animal.find(params[:id])
    render json: animal
  end
  
  def create
    animal = Animal.create(animal_params)
    if animal.valid?
      render json: animal.errors
  end

  def destroy
    animal = Animal.find(param[:id])
    if animal.destroy
      render json: animal
    else 
      render json: animal.errors
  end

  def update
    animal = Animal.find(params[:id])
    animal.update(animal_params)
    if animal.valid?
      render json: animal
    else 
      render json: animal.errors
    end
  end

    private
    strong params
    def student_params
      params.require(:animal).permit(:common_name, :scientific_binomial)
    end
end

