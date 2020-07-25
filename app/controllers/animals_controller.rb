class AnimalsController < ApplicationController

  def index
    if params[:animal_species].present?
      @animals = Animal.where :species => params[:animal_species]
    else
      @animals = Animal.all
    end 
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.create animal_params
    if params[:file].present?
      res = Cloudinary::Uploader.upload(params[:file])
      animal.image = res["public_id"]
    end
    animal.save
    redirect_to animal
  end

  def edit
    @animal = Animal.find params[:id]
  end

  def update
    animal = Animal.find params[:id]
    animal.update animal_params
    if params[:file].present?
      res = Cloudinary::Uploader.upload(params[:file])
      animal.image = res["public_id"]
      animal.save
    end

    redirect_to animal
  end

  def show
    @animal = Animal.find params[:id]
  end

  def destroy
    animal = Animal.find params[:id]
    animal.destroy
    redirect_to animals_path
  end

  private
  def animal_params
    params.require(:animal).permit(:species, :age, :sex, :color, :image, :center_id)
  end

end
