class ShipImage < ApplicationRecord
  
  belongs_to :admiral
  
  has_many :ship_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  attachment :image
  
  #あるユーザーがお気に入りテーブルに登録されているか
  def favorited_by?(admiral)
    favorites.where(admiral_id: admiral.id).exists?
  end
  
end
