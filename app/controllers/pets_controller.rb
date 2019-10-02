class PetsController < ApplicationController

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to root_path @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def locations
    render json: Pet.select(:id, :latitude, :longitude).to_json
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :latitude, :longitude, :type, :photo, :adopted, :injured, :description)
  end
end
