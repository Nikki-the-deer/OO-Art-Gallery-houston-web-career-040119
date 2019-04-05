require 'pry'

class Artist

  attr_reader :name, :years_experience

  @@all = []
  
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end
  
  def cities
     self.galleries.map do |artist_gallery|   
       artist_gallery.city
    end
  end

  def self.total_experience
    total = 0
    @@all.map do |artist|
      total += artist.years_experience
    end
    total
  end

  def self.most_prolific
    @@all.map do |artist|
      artist.max
    end
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price, self.name, gallery)
    new_painting
  end




end

