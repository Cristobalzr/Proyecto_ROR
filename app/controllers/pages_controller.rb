class PagesController < ApplicationController
  def index
    @publications = Publication.all
  end
  def map
    @publications = Publication.all
  end

end
