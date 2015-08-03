class Cell
  def initialize(state, neighbours)
    @state = state # either 1 or 0 for alive or dead
    @neighbours = neighbours # an array that represents the surrounding cells
  end


  def regenerate
  		array_sum = @neighbours.count { |neighbour| neighbour == 1 }
  	if array_sum < 2
         @state = 0 
     elsif array_sum == 2 || array_sum == 3
         @state = 1
     elsif array_sum > 3 
         @state = 0
     else @state == 0 && array_sum == 3  
         @state = 1
     end 
  end
end














