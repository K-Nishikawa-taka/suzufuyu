class CreateShipImages < ActiveRecord::Migration[5.2]
  def change
    create_table :ship_images do |t|
      t.text :ship_name
      t.string :image_id
      t.text :caption
      t.integer :admiral_id

      t.timestamps
    end
  end
end
