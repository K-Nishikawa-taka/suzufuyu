class ShipImage < ApplicationRecord
  
  belongs_to :admiral
  
  attachment :image
  
end
