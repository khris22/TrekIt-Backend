class User < ApplicationRecord
    has_secure_password

    # relationships
    has_many :locations
    has_many :adventures

    validates :username, presence: true
    validates :email, presence: true

    validates :username, uniqueness: true
    validates :email, uniqueness: true

end
