

class Song
  attr_accessor :name, :artist, :genre

   @@count = 0
   @@genre
   @@artist
   @@genres = []
   @@artists = []
   def initialize(name, artist, genre)
     @genre = genre
     @name = name
     @artist = artist
     @@count += 1
     @@genres << genre
     @@artists << artist


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

   def self.genre_count
     gen = {}
     @@genres.each do |genre|

        if gen.has_key?(genre)
          gen[genre] += 1
        else
          gen[genre] = 1
        end
      end
      gen
   end



  def self.artist_count
    art = {}
    @@artists.each do |name|
        if art.has_key?(name)
          art[name] += 1
        else
          art[name] = 1
        end
      end
      art
    end
end
