class Song 
  
  attr_accessor :name, :artist, :genre 
  
  attr_reader :count, :artists, :genre 
  
  @@count = 0 
  
  @@genre = []
  
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    
    @@count +=1 
    
    @@genre << @genre 
    
    @@artists << @artist 
  end 
  
  def count
     @@count 
  end 
  
  def genre
     @@genre.uniq 
  end 
  
  def artists 
     @@artists.uniq
  end 
  
  def genre_count 
    @@genre.each do |genre|
      puts "#{genre}#{count}"
    end 
  end 
    
  def artist_count 
    @@artist.each do |artist|
      puts "#{artist}#{count}"
    end 
  end 
  
end 
  
 Luficer = Song.new("Lucifer", "Jay-Z", "Rap")
  
 ninetynineProblems =  Song.new("99 Problems", "Jay-Z", "Rap")
  
 Hitmebabyonemoretime = Song.new("Hit me Baby One More Time", "Brittany Spears", "Pop")
  
  Hitmebabyonemoretime.name 
  
  Hitmebabyonemoretime.artist
   
  Hitmebabyonemoretime.genre 
  
  Song.class_variable_get(:@@count)
  
  Song.class_variable_get(:@@artists)
  
  Song.class_variable_get(:@@genre)
  
  Song.count 
  
  Song.artists 
  
  Song.genre 
  
  Song.genre_count 
  
  Song.artist_count 
  
  