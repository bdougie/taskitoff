require 'spec_helper'

describe Todo  do

	describe '::alive' do
		it "should return todos made within the last 7 days" do
		end

		it "should not return todos made outside of the last 7 days" do
			todo = Todo.create(name: 'todo1', description: 'this is 8days')
			todo.created_at = Time.now - 8.days
			todo.save
			Todo.alive.should_not include(todo)
		end
	end

	it "should have a description" do
		todo = Todo.create(name: 'todo1', description: 'this is 8days')

		expect(todo).to respond_to(:description)	
		expect(todo).to respond_to(:name)	
	end

	describe "if a description is more than 20 characters" do
		it "should not be a valid description" do 
			todo = Todo.create(description: "#{'x'*21}")
			expect(todo).should_not be_valid
		end
	end	

	

end
