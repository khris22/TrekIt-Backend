class Location < ApplicationRecord
    has_many :adventures

    # add validations
    # presence & uniqueness of park
    validates :park, presence: true
    validates :park, uniqueness: true
end
