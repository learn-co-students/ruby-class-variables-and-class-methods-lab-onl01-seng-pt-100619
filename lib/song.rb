require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
   
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
   
  end 
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end  
# you want to be looping over the genres array though like you had originally

# and that does NOT have a value at all

# but like you just defined the empty hash, so theres nothing for us to loop over from that. we wanna loop over our list of genres, then compare them to that empty hash

  def self.genre_count
    hash = {}
    @@genres.each do |key, value|
      if hash[key]
      else 
       hash[key] = @@genres.count(key)
    end
    end
    hash
  end
  def self.artist_count
    hash = {}
    @@artists.each do |key, value|
      if hash[key]
      else 
       hash[key] = @@artists.count(key)
    end
    end
    hash 
  end
end
