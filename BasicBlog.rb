############################
#CLASS DECALARTION
############################

class Blog
  
  attr_accessor :post

  def initialize
  	@post=[]
  end	

  def add_post(post)
    @post.push(post)
  end	

  def create_front_page
    @post.each do |element|
      puts element.title
      puts element.date
      puts element.text
    end
    
  end

  def publish_front_page
  end

end

class Post

  attr_accessor :title
  attr_accessor :test
  attr_accessor :date

  def initialize(title, date, text)
    @title = title
    @date = date
    @test = text
  end

  def title
    @title	
  end

  def date
    @date	
  end

  def text
    @text	
  end

end

post1 = Post.new "Title_1", Time.now, "Text_1"
post2 = Post.new "Title_2", Time.now, "Text_2"
post3 = Post.new "Title_3", Time.now, "Text_3"

myBlog = Blog.new  

myBlog.add_post(post1)
myBlog.add_post(post2)
myBlog.add_post(post3)

myBlog.create_front_page