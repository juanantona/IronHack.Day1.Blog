############################
#CLASS DECALARTION
############################

class Blog

  def initialize
  	@post=[]
  end	

  def add_post(title)
    @post=@post
  end	

  def create_front_page

  end

  def publish_front_page
  end

class Post

  attr_accessor :title
  attr_accessor :test
  attr_accessor :date

  def initialize(title, date, test)
    @title
    @date
    @test
  end

  def title
    @title	
  end

  def date
    @date	
  end

  def test
    @test	
  end

end

post1 = Post.new "Title_1", Time.now, "Text_1"
post2 = Post.new "Title_2", Time.now, "Text_2"
post3 = Post.new "Title_3", Time.now, "Text_3"

blog.add_post 


	