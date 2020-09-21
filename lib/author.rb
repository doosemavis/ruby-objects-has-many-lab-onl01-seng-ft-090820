class Author
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Post.all.select {|post| post.artist == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_name(name)
    post = Post.new(name)
    post.artist = self
  end
  
  def self.song_count
    Post.all.count
  end
  
end
