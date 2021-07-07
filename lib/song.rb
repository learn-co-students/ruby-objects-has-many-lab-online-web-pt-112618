require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    # original try: if the song instance has an artist, return the associated
    # artist name, otherwise nil
    # self.artist ? self.artist.name : nil
    # refactoring
    
    artist.name if artist
  end

end
