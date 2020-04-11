require 'faker'

# LOCATION
Location.create(park: 'Yosemite' , image: 'https://wallpaper-house.com/data/out/7/wallpaper2you_162315.jpg', is_wishlist?: false, is_done?: true, lat: 37.865101 , long: -119.538330)
Location.create(park: 'Yellowstone' , image: 'https://wallpaper-house.com/data/out/10/wallpaper2you_461363.jpg', is_wishlist?: false, is_done?: true, lat: 44.412266, long: -110.723183)
Location.create(park: 'Arches' , image: 'https://wallpaper-house.com/data/out/6/wallpaper2you_96933.jpg', is_wishlist?: true, is_done?: false, lat: 38.733082 , long: -109.592514)
Location.create(park: 'Grand Canyon' , image: 'https://wallpaper-house.com/data/out/8/wallpaper2you_253208.jpg', is_wishlist?: false, is_done?: true, lat: 36.106964, long: -112.112999)

# ADVENTURE
Adventure.create(location_id: 1, title:'Fun Times at Yosemite', memo: Faker::Lorem.paragraph, image:'', is_wishlist?: false, is_done?: true)
Adventure.create(location_id: 2, title:'YELLOWSTONE IS THE BEST', memo: Faker::Lorem.paragraph, image:'', is_wishlist?: false, is_done?: true)
Adventure.create(location_id: 1, title:'SUNRISE at Yosemite', memo: Faker::Lorem.paragraph, image:'', is_wishlist?: false, is_done?: true)
Adventure.create(location_id: 4, title:'Grand Canyon is very grand!!!', memo: Faker::Lorem.paragraph, image:'', is_wishlist?: false, is_done?: true)


