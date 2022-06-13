class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :admiral_id
      t.integer :ship_image_id

      t.timestamps
    end
  end
end
