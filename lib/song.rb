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

  

  def artist=(artist)
    @artist = artist
  end
   def artist
     @artist
   end
  
  def artist_name
 if self.artist!=nil 
   self.artist.name
 else
   nil
 end
end
  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end
end