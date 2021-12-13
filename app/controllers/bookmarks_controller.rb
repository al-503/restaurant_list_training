class BookmarksController < ApplicationController

  def new 
    @bookmark = bookmark.new
  end

  def create 
    @bookmark = bookmark.new(bookmark_params)
    @bookmark.save
    
    redirect_to restaurant_lists_path #redirige vers l index si ont veut rediriger vers le produit crée on lui passe la route associer
  end


end
