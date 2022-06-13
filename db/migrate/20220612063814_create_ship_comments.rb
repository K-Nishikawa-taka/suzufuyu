class CreateShipComments < ActiveRecord::Migration[5.2]
  def change
    create_table :ship_comments do |t|
      t.text :comment
      t.integer :admiral_id
      t.integer :ship_image_id

      t.timestamps
    end
  end
end
