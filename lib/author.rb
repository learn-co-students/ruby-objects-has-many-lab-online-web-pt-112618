class Author
  attr_accessor :name
  @@authors = []
  @@posts=[]
  def initialize(name)
    @@authors << self
    @name = name
    
  end
  
 
  
   def add_post(post)
    @@posts << post
    post.author = self 
  end
  def add_post_by_title(name)
    a=Post.new(name)
    add_post(a)
  end
  def posts
    @@posts
  end
  def self.all
    @@authors
  end
  def self.post_count
    @@posts.count
  end
end