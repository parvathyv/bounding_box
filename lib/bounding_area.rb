require_relative 'bounding_box'

class BoundingArea
	def initialize(bounding_area_array = nil)
    	@bounding_area_array = bounding_area_array
    end	

	def contains_point?(x, y)

		flag = false
		
        if @bounding_area_array.nil?
          return flag
        end	

		@bounding_area_array.each do|box_object|

     		box_object.left
			box_object.right
	    	box_object.top
			box_object.bottom
        
        	flag = box_object.contains_point?(x,y)
        	if flag == true
        		return flag
        	end	
        end
        flag
	end	
end




=begin
bottom_rect = BoundingBox.new(0.0, 0.0, 2.0, 1.0)
top_rect = BoundingBox.new(2.0, 1.0, 3.0, 4.0)
area = BoundingArea.new()
puts area.contains_point?(6.0, 4.0)
=end