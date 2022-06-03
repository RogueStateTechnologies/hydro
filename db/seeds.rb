User.create!(email: 'test@test.com', email_confirmation: 'test@test.com', password: 'P@ssw0rd12', password_confirmation: 'P@ssw0rd12', first_name: 'test', last_name: 'dummy', user_name: 'testName')
puts 'Users Seeded'

 hot_house = Crop.create!(name: 'Hot House Tomatoes', description: 'Juicy, ripe, tomatoes')
cherry_toms = Crop.create!(name: 'Cherry Tomatoes', description: 'Juicy, ripe, tomatoes')
grapes = Crop.create!(name: 'Red Grapes', description: 'Make wine, not war')
rice = Crop.create!(name: 'Rice', description: 'Its just rice')
bibb = Crop.create!(name: 'Bibb Lettuce', description: 'Quality Leafy Greens')
iceberg = Crop.create!(name: 'Iceberg Lettuce', description: 'A Fastfood classic')
chives = Crop.create!(name: 'Chives', description: 'NOT the same as Green Onions')
green_onions = Crop.create!(name: 'Green Onions', description: 'NOT the same as Chives')
puts 'Crops Seeded'

Phase.create!(name: 'Sprouting', crop_id: hot_house.id, description: 'Just a Little Seedling')
Phase.create!(name: 'Early Growth', crop_id: hot_house.id, description: 'Getting higher, and higher')
Phase.create!(name: 'Bloom', crop_id: hot_house.id, description: 'Flowers become fruit')
Phase.create!(name: 'Vegatation', crop_id: hot_house.id, description: 'Soon To be harvested')

Phase.create!(name: 'Sprouting', crop_id: cherry_toms.id, description: 'Just a Little Seedling')
Phase.create!(name: 'Early Growth', crop_id: cherry_toms.id, description: 'Getting higher, and higher')
Phase.create!(name: 'Bloom', crop_id: cherry_toms.id, description: 'Flowers become fruit')
Phase.create!(name: 'Vegatation', crop_id: cherry_toms.id, description: 'Soon To be harvested')

Phase.create!(name: 'Sprouting', crop_id: grapes.id, description: 'Just a Little Seedling')
Phase.create!(name: 'Early Growth', crop_id: grapes.id, description: 'Getting higher, and higher')
Phase.create!(name: 'Bloom', crop_id: grapes.id, description: 'Flowers become fruit')
Phase.create!(name: 'Vegatation', crop_id: grapes.id, description: 'Soon To be harvested')

Phase.create!(name: 'Sprouting', crop_id: rice.id, description: 'Just a Little Seedling')
Phase.create!(name: 'Early Growth', crop_id: rice.id, description: 'Getting higher, and higher')
Phase.create!(name: 'Bloom', crop_id: rice.id, description: 'Flowers become fruit')
Phase.create!(name: 'Vegatation', crop_id: rice.id, description: 'Soon To be harvested')

Phase.create!(name: 'Sprouting', crop_id: bibb.id, description: 'Just a Little Seedling')
Phase.create!(name: 'Early Growth', crop_id: bibb.id, description: 'Getting higher, and higher')
Phase.create!(name: 'Bloom', crop_id: bibb.id, description: 'Flowers become fruit')
Phase.create!(name: 'Vegatation', crop_id: bibb.id, description: 'Soon To be harvested')

Phase.create!(name: 'Sprouting', crop_id: iceberg.id, description: 'Just a Little Seedling')
Phase.create!(name: 'Early Growth', crop_id: iceberg.id, description: 'Getting higher, and higher')
Phase.create!(name: 'Bloom', crop_id: iceberg.id, description: 'Flowers become fruit')
Phase.create!(name: 'Vegatation', crop_id: iceberg.id, description: 'Soon To be harvested')

Phase.create!(name: 'Sprouting', crop_id: chives.id, description: 'Just a Little Seedling')
Phase.create!(name: 'Early Growth', crop_id: chives.id, description: 'Getting higher, and higher')
Phase.create!(name: 'Bloom', crop_id: chives.id, description: 'Flowers become fruit')
Phase.create!(name: 'Vegatation', crop_id: chives.id, description: 'Soon To be harvested')

Phase.create!(name: 'Sprouting', crop_id: green_onions.id, description: 'Just a Little Seedling')
Phase.create!(name: 'Early Growth', crop_id: green_onions.id, description: 'Getting higher, and higher')
Phase.create!(name: 'Bloom', crop_id: green_onions.id, description: 'Flowers become fruit')
Phase.create!(name: 'Vegatation', crop_id: green_onions.id, description: 'Soon To be harvested')
puts 'Phases Seeded'

Nutrient.create!(name: 'Test', manufacturer: 'Test', compound: 'Test', crop_id: iceberg.id)
puts 'Nutrients Seeded'

Plant.create!(published: true, origin: 'seed', environment: 'indoor', medium: 'soil', light_system: 'natural', container_size: 10, feedings_per_week: 10, user_id: User.first.id, crop_id: hot_house.id, phase_id: Phase.first.id)
puts 'Plants Seeded'

HealthReport.create!(plant_id: Plant.first.id, height_in_centimeters: 100, average_air_temp: 29, ph: 3, light_exposure: 10, root_health: 'good', diagnosis: "healthy")
puts 'Health Reports Seeded'