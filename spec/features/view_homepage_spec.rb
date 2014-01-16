require 'spec_helper'

feature 'View the homepage' do 
	scenario 'user sees the homepage' do
		visit root_path
	end	

	scenario'user sees a welcome message' do
		visit root_path
		expect(page).to have_content 'Welcome to Taskitoff'
	end

end