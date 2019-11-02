
class Song
  attr_accessor :name, :artist, :genre 
    @@count = 0
    @@artists = []
    @@genres = []
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end 

  def self.count
    @@count
  end 

  def self.artists
    @@artists.uniq
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.genre_count
    result = {}
    @@genres.each do |genre|
      if result[genre]
        result[genre] += 1
      else
        result[genre] = 1 
      end 
    end 
    result
  end 
  
  def self.artist_count 
    the_count = {}
    @@artists.each do |artist|
      if the_count[artist]
        the_count[artist] += 1
      else 
        the_count[artist] = 1
      end 
    end
    the_count
  end 
  
end 


