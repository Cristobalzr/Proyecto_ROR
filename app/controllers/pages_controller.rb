class PagesController < ApplicationController
  def index
    @pets = Pet.all
  end
  def map
    @pets = Pet.all
  end

end
