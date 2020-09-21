class Author
  
  attr_accessor :title, :name
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def posts
    Post.all.select {|post| post.artist == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.artist = self
  end
  
  def self.post_count
    Post.all.count
  end
  
end
