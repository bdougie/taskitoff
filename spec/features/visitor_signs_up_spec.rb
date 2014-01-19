require 'spec_helper'

feature 'Visitors can sign up' do 
	scenario 'with valid emamil address' do
		sign_up_with 'valid@example.com', 'password'

		expect(page).to have_content('Sign out')
	end

end