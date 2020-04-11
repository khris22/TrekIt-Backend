class Location < ApplicationRecord
    has_many :adventures

    # add validations
    # presence & uniqueness of park
end
