class PicturesController < ApplicationController
  def show    
  	@picture = Picture.find_by({ :id => params[:id] })
  end

  def index    
  	@list_of_pictures = Picture.all
  end

  def new    
  end

  def create   
  	@p = Picture.new
  	@p.caption = params["caption"]
  	@p.source = params["source"]
  	@p.save

  	redirect_to("http://localhost:3000/all_pictures")

  end

  def destroy   
  	@p = Picture.find_by({ :id => params[:id] }).destroy
  	@p.save

	redirect_to("http://localhost:3000/all_pictures")
  end

  def edit   
    @picture = Picture.find_by({ :id => params[:id] })	
  end

end
