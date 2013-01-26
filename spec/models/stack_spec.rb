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
	    @stack.push(3).should == 3
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
	    @stack.pop.should == 4
	  end
	end
	
	context 'when peeking at an item' do
	  before do
      @stack.push(3)
      @stack.push(2)
      @stack.push(1)
    end
	  
	  it 'should return the item at the head' do
	    subject.peek.should == 1
	  end
	  
	  it 'should change after a push' do
	    subject.push 4
	    subject.peek.should == 4
	  end
	  
	  it 'should change after a pop' do
	    subject.pop 
	    subject.peek.should == 2
	  end
	end
	
end