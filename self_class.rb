class Post
    class << self
  attr_writer :title

  def author
    "Jimmy"
  end

  def full_title
    "#{@title} by #{self.class.author}"
  end
  end
end

pst = Post.new
pst.title = "Delicious Ham"
puts pst.full_title
