class FavoritesController < ApplicationController
  
  def create
    ship_image = ShipImage.find(params[:ship_image_id])
    favorite = current_admiral.favorites.new(ship_image_id: ship_image.id)
    favorite.save
    redirect_to ship_image_path(ship_image.id)
  end
  
  def destroy
    ship_image = ShipImage.find(params[:ship_image_id])
    favorite = current_admiral.favorites.find_by(ship_image_id: ship_image.id)
    favorite.destroy
    redirect_to ship_image_path(ship_image.id)
  end
  
end
