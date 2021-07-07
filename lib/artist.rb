require 'pry'
#artists had many songs

class Artist
  attr_accessor :name
  @@all_songs = []

  def initialize(name)
    @name = name
    @@all_songs << self
  end

  def add_song(song)
    song.artist = self
  end

  def self.all_songs
    @@all_songs
  end

  def songs #WHHAAAAAT IS THISSSSS?
    Song.all.select {|song| song.artist == self} #HUH?
  end

  def add_song_by_name(name) # WHAT THE HELL IS THIS AND WHAT DOES IT MEAN?!
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
    #binding.pry
    Song.all.count
  end

end
