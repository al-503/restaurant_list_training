class RestaurantListsController < ApplicationController

  def index
    @restaurant_lists = RestaurantList.all
  end

  def show
    @restaurant_list = RestaurantList.find(params[:id])
    @bookmarks = @restaurant_list.bookmarks
  end

  def new
    @restaurant_list = RestaurantList.new
  end
  
  def create
    @restaurant_list = RestaurantList.new(restaurant_list_params)

    if @restaurant_list.save
    redirect_to restaurant_lists_path #redirige vers l index si ont veut rediriger vers le produit crée on lui passe la route associer

    else
      render :new
    end
  end

  private 

  def restaurant_list_params
    params.require(:restaurant_list).permit(:name)
  end
end
