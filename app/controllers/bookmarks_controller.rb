class BookmarksController < ApplicationController

  def new 
    @restaurant_list = RestaurantList.find(params[:restaurant_list_id])
    @bookmark = Bookmark.new
    @restaurants = Restaurant.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @restaurant_list = RestaurantList.find(params[:restaurant_list_id])
    @bookmark.restaurant_list = @restaurant_list
    @restaurants = Restaurant.all
    if @bookmark.save
      redirect_to restaurant_list_path(@restaurant_list)
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:restaurant_id)
  end

end
