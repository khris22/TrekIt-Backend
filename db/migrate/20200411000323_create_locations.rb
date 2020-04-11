class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :park
      t.string :image
      t.boolean :is_wishlist?, default: false
      t.boolean :is_done?, default: false
      
      # to incorporate google map api?
      t.float :lat 
      t.float :long

      t.timestamps
    end
  end
end
