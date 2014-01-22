require 'faker'

# Create 15 todos

def random_date from = Date.new(10.days), to = Time.now.to_date
  rand(from..to)
end

15.times do
  t = Todo.create(
    name: Faker::Lorem.words(rand(1..5)).join(" "),
    description: Faker::Lorem.words(rand(1..4)) 
    random_date
  )
end  


u = User.new(
  name: 'Admin User',
  email: 'me@me.com', 
  password: 'password', 
  password_confirmation: 'password')
u.skip_confirmation!
u.save

u = User.new(
  name: 'User',
  email: 'admin@example.com', 
	password: 'password', 
  password_confirmation: 'password')
u.skip_confirmation!
u.save



puts "Seed finished"
puts "#{User.count} users created"
puts "#{Todo.count} tasks created"

