User.create!(email: 'test@test.com', email_confirmation: 'test@test.com', password: 'P@ssw0rd12', password_confirmation: 'P@ssw0rd12', first_name: 'test', last_name: 'dummy', user_name: 'testName')
puts 'Users Seeded'

Crop.create(name: 'Hot House Tomatoes', description: 'Juicy, ripe, tomatoes')
puts 'Crops Seeded'

Phase.create!(name: 'Sprouting', crop_id: Crop.first.id, description: 'Just a Little Seedling')
puts 'Phase Seeded'