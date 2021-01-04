
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def songs=(songs)
    @songs = songs
  end

  def songs
    @songs
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
    # initializes and saves the artist
  end

  def add_song
    Song.new = self
    self.save
  end

  def genres
    #Artists have many genres THROUGH their Songs
  end


end