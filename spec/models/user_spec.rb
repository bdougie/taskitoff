require 'spec_helper'

describe User do
	before(:each) do 
		@user = Factory.build(:user)
	end

	it "should create user with valid attributes"
		User.create!(@user.attributes)
	end
end