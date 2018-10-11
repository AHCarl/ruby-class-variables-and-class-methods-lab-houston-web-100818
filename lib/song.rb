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
    count = {}
    @@genres.map do |genre|
      if count.key?(genre)
        count[genre] += 1 
      else 
        count[genre] = 1 
      end
      count
    end
  end
    
  
end