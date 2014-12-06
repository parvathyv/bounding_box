require 'pry'
class BoundingBox
  
  def initialize(x1, y1, x2, y2)
  	
  	@x1 = x1
  	@x2 = x2
  	@y1 = y1
  	@y2 = y2
    @width = 0
    @height =  0
   
  	@left_edge = 0
  	@right_edge = 0
  	@top_edge = 0
  	@bottom_edge = 0
  	
  end

  def width
     @width = @x2 
  end	
   

  def height
     @height = @y2
  end 

  def left
  	@left_edge = @x1
  end	

  def right
  	@right_edge = @x1 + @x2
  end	
  
  def bottom
  	@bottom_edge = @y1
  end	

  def top
    @top_edge = @y1 + @y2
  end	

  def contains_point?(x, y)
    
    if (x >= @left_edge && x <= @right_edge && y >= @bottom_edge && y <= @top_edge)
    	flag = true
    else
      flag = false
    end
    flag
  end  

end

#binding.pry

=begin
box = BoundingBox.new(5.0, 10.0, 25.0, 50.0)
box.height
box.width
box.left
box.right
box.top
box.bottom

puts box.contains_point?(50.0, 20.0)
=end