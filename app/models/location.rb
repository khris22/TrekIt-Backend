class Location < ApplicationRecord
    has_many :adventures, dependent: :destroy

    validates :park, presence: true
    validates :park, uniqueness: true
    
    # Latitude and Longitude validations
    # Error on Geocoder lat >= -90 && lat <= 90
    validates :lat , numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
    validates :long, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
end

# change column type from float to decimal
# change_column :events, :latitude, :decimal, { precision: 10, scale: 6 }
# change_column :events, :longitude, :decimal, { precision: 10, scale: 6 }

# https://github.com/andrewgr/missing_validators
# http://www.rubygeocoder.com/