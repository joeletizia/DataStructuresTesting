class Stack
  
  def initialize
    @items = Array.new
  end
  
  def peek
    
  end
  
  def push(item)
    x = @items.unshift(item)
    x[0]
  end
	
	def pop
	  x = @items.shift
	end
	
	def length
	  @items.length
	end
end