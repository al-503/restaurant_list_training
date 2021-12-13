class BookmarksController < ApplicationController

  def new 
    @restaurant_list = RestaurantList.find(params[:restaurant_list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @restaurant_list = RestaurantList.find(params[:restaurant_list_id])
    @bookmark.restaurant_list = @restaurant_list
    if @bookmark.save
      redirect_to restaurant_list_path(@restaurant_list)
    else
      render :newx
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:restaurant_id)
  end

end
