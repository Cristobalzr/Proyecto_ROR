class PublicationsController < ApplicationController
  before_action :set_pet, only: [:destroy]

  def index
    @publications = Publication.all
  end
  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(pet_params)
    @publication.user = current_user
    respond_to do |format|
      if @publication.save
        format.html { redirect_to publications_path @publication, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def edit
  end

  def update
  end

  def locations
    render json: Publication.select(:id, :name, :latitude, :longitude, :photo).to_json
  end

  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Eliminaste la mascota' }
      format.json { head :no_content }
    end
  end

  private
  def pet_params
    params.require(:publication).permit(:name, :latitude, :longitude, :type, :photo, :adopted, :injured, :description)
  end

  def set_pet
    @publication = Publication.find(params[:id])
  end
end
