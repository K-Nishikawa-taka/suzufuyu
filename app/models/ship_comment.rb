class ShipComment < ApplicationRecord
  
  belongs_to :admiral
  belongs_to :ship_image
  
end
