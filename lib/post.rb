require 'pry'
#posts belong to author

class Post
  attr_accessor :title, :author #author(belongs to an author)
  @@all = []

  def initialize(title) #new pt 1
    @title = title  #title
    @@all << self  #new pt3
  end

  def self.all #.all class method
    @@all
  end

  def author_name #knows the name of author
    author.name if author
  end

end
