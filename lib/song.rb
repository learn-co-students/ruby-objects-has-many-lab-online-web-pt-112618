class Song 
  attr_accessor :song, :artist, :name
  @@all = []
  
  def initialize(song)
    @song = song
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def name  
    @song
  end
  
  def artist_name
    if @artist == nil 
      nil 
    else 
      self.artist.name
    end
  end 
end 