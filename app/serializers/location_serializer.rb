class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :park, :image, :is_wishlist?, :is_done?, :lat, :long
  has_many :adventures
end
