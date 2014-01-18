require 'spec_helper'

describe Todo  do
	it "should have a description" do
		todo = Todo.new
		expect(todo).to respond_to(:description)	
	end

	describe "if a description is more than 20 characters" do
		it "should not be a valid description" do 
			todo = Todo.create(description: "#{'x'*21}")
			expect(todo).should_not be_valid
		end
	end	
end