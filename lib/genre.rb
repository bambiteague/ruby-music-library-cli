
class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def songs=(songs)
    @songs << songs
  end

  def songs
    @songs
  end

  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create
    # initializes and saves the genre
  end

  def artists
    #Genres have many Artists THROUGH their Songs
  end
end