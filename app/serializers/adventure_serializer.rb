class AdventureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :memo, :image, :date, :is_wishlist?, :is_done?, :location_id
  belongs_to :location
end
