
class Song
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @artist = artist
    save
  end

  def artist=(artist)
    @artist = artist
    #assigns an artist to the song (song belongs to artist)
    #invokes Artist #add_song to add itself to the artist's collection of songs
  end

  def artist 
    @artist
     #returns the artist of the song
  end

  def genre=(genre)
    @genre = genre
  end

  def genre
    @genre
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
   # initializes, saves, and returns the song
  end

  def find_by_name
  end

  def find_or_create_by_name
  end
  
end