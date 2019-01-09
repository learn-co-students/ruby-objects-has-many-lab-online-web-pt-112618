require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs

    # refactoring
    # Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self # Reciprocal relationship
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  def self.song_count
    Song.all.count
  end
end
