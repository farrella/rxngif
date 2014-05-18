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
    	p = Picture.new
    	p.caption = ({ :caption => params[:caption] })
    	p.source = "http://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png"
    	p.save

  end

end