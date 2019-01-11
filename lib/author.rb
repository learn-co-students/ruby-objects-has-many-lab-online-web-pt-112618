require 'pry'

#author has many posts

class Author
  attr_accessor :name #name
  @@posts = [] #post has many posts pt1

  def initialize(name) #new
    @name =  name
    @@posts << self #post has many posts pt2
  end

  def self.posts #what test does this belong to
    @@posts

  end

  def posts #post has many posts pt3
      Post.all.select {|post| post.author == self}
  end

  def add_post(post) #add post tell post it BELONGS TO author
    post.author = self
  end

  def add_post_by_title(title) #creates a new post and associates the post and author
    new_post = Post.new(title)
    new_post.author = self #MAKES NO SENSE TO MEEEEEEEE!
  end

  def self.post_count #CONFUSION
    Post.all.count
  end

end
