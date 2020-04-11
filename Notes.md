Location
park - string
lat - float
long - float
image - string
is_wishlist? - boolean, default: false
is_done? - boolean, default: false

has many :adventures

Adventure

location_id - integer
title - string
memo - text
image - string, default: false
is_wishlist? - boolean, default: false
is_done? - boolean

belongs to :Location

Additional Plan:

User
username - string
email - string
password_digest - string (bcrypt? Devise?)
auth_id - integer
