class Location < ApplicationRecord
    has_many :adventures, dependent: :destroy

    # add validations
    # presence & uniqueness of park
    validates :park, presence: true
    validates :park, uniqueness: true
end
