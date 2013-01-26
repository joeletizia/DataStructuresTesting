require	'spec_helper'

describe Stack do
	before do
		@stack = Stack.new()
	end
	
	subject {@stack}
	
	it {should respond_to(:peek)}
	it {should respond_to(:pop)}
	it {should respond_to(:push)}
	it {should respond_to(:length)}
	
	
	
	context 'when an item is pushed' do
	  it 'should increase the length of the stack' do
	    expect {@stack.push(3)}.to change {@stack.length}.by(1)
	  end
	  
	  it 'should return the item that is pushed' do
	    x = @stack.push 3
	    x.should == 3
	  end
	end
	
	context 'when an item is popped' do 
	  before(:each) do
	    @stack.push(4)
	  end
	  
	  it 'should decrease the length of the stack' do 
	    expect {@stack.pop}.to change {@stack.length}.by(-1)
	  end
	  
	  it 'should return the item that is popped' do
	    x = @stack.pop
	    x == 4
	  end
	end
	
end