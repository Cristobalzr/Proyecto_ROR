class PagesController < ApplicationController
  def index
    @pets = Pet.all
    
  end
end
