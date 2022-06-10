class ShipImagesController < ApplicationController

  def new
    @ship_image = ShipImage.new
  end

  def create
    @ship_image = ShipImage.new(ship_image_params)
    @ship_image.admiral_id = current_admiral.id
    @ship_image.save
    redirect_to ship_images_path
  end

  def index
    @ship_images = ShipImage.all
  end

  def show
    @ship_image = ShipImage.find(params[:id])
  end

  def destroy
    @ship_image = ShipImage.find(params[:id])
    @ship_image.destroy
    redirect_to ship_images_path
  end

  private

  def ship_image_params
    params.require(:ship_image).permit(:ship_name, :image, :caption)
  end

end
