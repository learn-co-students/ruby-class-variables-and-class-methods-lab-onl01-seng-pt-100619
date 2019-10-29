class Song 
  
   @@artists = []
   @@genres = []
   @@count = 0 
   
  attr_accessor :name, :artist, :genre
   
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count +=1
    
    # add the genre of the song being created to the @@genres array.
    # All genres should be added to the array
    @@artists << @artist
    @@genres << @genre
    
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
  
#   def to_histogram
# 	 inject(Hash.new(0)) { |h, x| h[x] += 1; h}
# 	 end
# 	end
  
  def self.genre_count
  end
end