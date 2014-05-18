class PicturesController < ApplicationController
  def show    
  	@picture = Picture.find_by({ :id => params[:id] })
  end
end

  def index    
  	@list_of_pictures = Picture.all
  end

  def new    
  end

    def create    
  end