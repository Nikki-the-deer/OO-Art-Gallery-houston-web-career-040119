class Painting

  attr_reader :title, :price, :artist

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery 
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    total = 0
    @@all.map do |art|
      total += art.price
    end
    total
  end

  end
