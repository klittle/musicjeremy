# this is not the way to write a "good" controller, but is a stub so we can work on the view code
class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @albums = @artist.albums.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 6
  end
  
  def index
    @artists = Artist.all
  end
  
  
end