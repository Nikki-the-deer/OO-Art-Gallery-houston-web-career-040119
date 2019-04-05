require_relative '../config/environment.rb'


artist1 = Artist.new("Bob Ross", 50)
artist2 = Artist.new("Squidward", 6)

gallery1 = Gallery.new("Museum of Fine arts Houston", "Houston")
gallery2 = Gallery.new("Smithsonian", "Washington D.C.")


painting1 = Painting.new("Happy Tree", 30000, artist1, gallery2)
painting2 = Painting.new("Bold and Brash", 10, artist2, gallery2)
painting3 = Painting.new("Happy Mountainside", 20000, artist1, gallery2)


binding.pry

puts "Bob Ross rules."
