require 'spec_helper'

describe Todo  do
	it "should have a description" do
		todo = Todo.new
		expect(todo).to respond_to(:description)	
	end
end