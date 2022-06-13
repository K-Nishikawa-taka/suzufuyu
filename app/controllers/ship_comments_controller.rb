class ShipCommentsController < ApplicationController

  def create
    ship_image = ShipImage.find(params[:ship_image_id])
    ship_comment = current_admiral.ship_comments.new(ship_comment_params)
    ship_comment.ship_image_id = ship_image.id
    ship_comment.save
    redirect_to ship_image_path(ship_image)
  end

  def destroy
    ShipComment.find_by(id: params[:id]).destroy
    redirect_to ship_image_path(params[:ship_image_id])
  end

  private

  def ship_comment_params
    params.require(:ship_comment).permit(:comment)
  end

end
