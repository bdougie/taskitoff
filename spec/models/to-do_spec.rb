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

=begin
As a user, I should be able to sign up for a free account by providing a user name, password and email address.
As a user, I want to be able to sign in and out of the Blocitoff.
As a user, I want to be able to create a single to-do list.
As a user, I want to be able to create multiple items on my to-do list.
As a user, I want to be able to mark items on my to-do list as complete.
Items on a to-do list should automatically self-destruct after 7 days from their creation.
=end