class Gallery

  attr_reader :name, :city, :painting

  @@all = []

  def initialize(gallery_name, city)
    @gallery_name = gallery_name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end


  def paintings
    Painting.all.select do |painting|
      painting.gallery
    end
    self.painting

  end

  def artists
    self.paintings.map do |painting|
      painting.artist
    end
  end
end


