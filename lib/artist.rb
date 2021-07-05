class Artist
  attr_accessor :name
@@song_count = 0
def initialize(name)
@name = name
@songs = []
end
def add_song(song)
    songs << song
    song.artist = self   #Artist #add_song takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
    @@song_count += 1
end
def add_song_by_name(name)
    song = Song.new(name)
    songs << song
    song.artist = self
    @@song_count += 1
  end
def songs
  @songs
end
def self.song_count
  @@song_count
end
end
