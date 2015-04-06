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
    strAux = ""
    @post.each do |post|
       strAux = strAux + post.title + "\n"
       strAux = strAux + "**************" + "\n"
       strAux = strAux + post.text + "\n"
       strAux = strAux + "--------------" + "\n"
    end
    return strAux
  end

  def publish_front_page
    puts create_front_page 
  end

  def sort_by_date
  
    @post.sort_by {|post| @post.text}

  end

end

class Post

  attr_accessor :title
  attr_accessor :text
  attr_accessor :date

  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
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

post1 = Post.new "Title_1", Time.now, "z"
post2 = Post.new "Title_2", Time.now, "y"
post3 = Post.new "Title_3", Time.now, "x"

myBlog = Blog.new  

myBlog.add_post(post1)
myBlog.add_post(post2)
myBlog.add_post(post3)

myBlog.create_front_page
myBlog.publish_front_page