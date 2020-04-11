class CreateAdventures < ActiveRecord::Migration[6.0]
  def change
    create_table :adventures do |t|
      t.integer :location_id
      t.string :title
      t.text :memo
      t.string :image
      t.datetime :date

      # boolean might not be needed here, depends on how the app will look like in frontend 
      t.boolean :is_wishlist?, default: false
      t.boolean :is_done?, default: false

      t.timestamps
    end
  end
end
