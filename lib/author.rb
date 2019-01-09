class Author 
  attr_accessor :name 
  @@post_count = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    @posts 
  end
  
  def add_post(post_name)
    @posts << post_name
    post_name.author = self 
    @@post_count += 1 
  end 
  
  def add_post_by_title(titled_post)
    new_post = Post.new(titled_post)
    @posts << new_post
    new_post.author = self
    @@post_count += 1 
  end
  
  def self.post_count
    @@post_count
  end
  
end