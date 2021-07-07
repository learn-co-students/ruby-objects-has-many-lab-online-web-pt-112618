class Artist
  attr_accessor :name
 

  @@artists = []
 @@songs = []
  def initialize(name)
    @@artists << self
    @name = name
   
  end
  
  def add_song(song)
    @@songs << song
    song.artist = self 
  end
 
 def songs
    @@songs
  end
  def add_song_by_name(name)
    a=Song.new(name)
    add_song(a)
  end
  
  
  
  def self.all
    @@artists
  end
  def self.song_count
    @@songs.count
  end
end