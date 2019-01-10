class Author
  attr_accessor :name
  attr_reader :posts
  @@all = []
  def initialize(name)
    @name = name
    @posts = []
    @@all.push(self)
  end

  def add_post(post)
    @posts.push(post)
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts.push(new_post)
  end

  def self.post_count
    sum = 0
    @@all.each do |author|
      sum += author.posts.count
    end
    sum
  end
end
