class Author
  
  attr_accessor :name
  
    @@posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def self.all
    @@all
  end
  
  def add_post(title)
    title.author = self
    @posts << title
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    title.author = self
  end
  
  def self.post_count
   Post.all.count
  end
end

# class Artist
  
# attr_accessor :name
 
# @@songs = []
 
# def initialize(name)
#   @name = name
#   @songs = []
# end
 
# def self.songs
#   @@songs
# end
 
# def songs
#   @songs
# end
 
# def add_song(song)
#   @songs << song
#   song.artist = self
# end

# def add_song_by_name(song)
#   song = Song.new(song)
#   @songs << song
#   song.artist = self
# end
 
# def self.song_count
#   Song.songs.count
# end
# end