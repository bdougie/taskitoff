FactoryGirl.define do |user|
	factory :user do
		name "Brian Douglas"
		sequence(:email) { |n| "person#{n}@example.com" }
		passwordskipcal "helloworld"
		password_confirmation "helloworld"
		confirmed_at Time.now
	end
end

