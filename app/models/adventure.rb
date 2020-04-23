class Adventure < ApplicationRecord
    belongs_to :location

    validates :title, presence: true
    validates :title, uniqueness: true
end
