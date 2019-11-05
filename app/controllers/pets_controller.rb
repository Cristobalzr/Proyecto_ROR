class PetsController < ApplicationController
  before_action :set_pet, only: [:destroy]

  def index
    @pets = Pet.all
  end
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    respond_to do |format|
      if @pet.save
        format.html { redirect_to pets_path @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
  end

  def update
  end

  def locations
    render json: Pet.select(:id, :name, :latitude, :longitude, :photo).to_json
  end

  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Eliminaste la mascota' }
      format.json { head :no_content }
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :latitude, :longitude, :type, :photo, :adopted, :injured, :description)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
