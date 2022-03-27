# frozen_string_literal: true

puts "Seeding crops..."
cannabis     = Crop.create!(name:        'Cannabis', 
                           description: 'Its weed...')
tomatoes     = Crop.create!(name:        'Tomatoes', 
                           description: 'Red and Juciy')
lettuce      = Crop.create!(name:        'Lettuce', 
                           description: 'Leafy and Wonderful')
strawberries = Crop.create!(name:        'Strawberries', 
                           description: 'A Sweet Treat')
pineapple    = Crop.create!(name:        'Pineappple', 
                           description: 'Peel before eating')

puts "Seeding variants..."
Variant.create!(name:        'OG Kush', 
               description: 'A quality strain', 
               crop_id:     cannabis.id)
Variant.create!(name:        'Hot House', 
               description: 'Big tomoatoes', 
               crop_id:     tomatoes.id)
Variant.create!(name:        'Bibb', 
               description: 'Funny Looking', 
               crop_id:     lettuce.id)
Variant.create!(name:        'Honeoye', 
               description: 'A Strawberry', 
               crop_id:     strawberries.id)
Variant.create!(name:        'Kings Hawiian', 
               description: 'Tart pizza topping', 
               crop_id:     pineapple.id)

puts "Seeding Plans..."
flora = Plan.create!(name:        'Flora Series', 
                    description: 'A Solid Plan', 
                    crop_id:     cannabis.id)

puts "Seeding Phases..."
seed = Phase.create!(name:           'Seed Phase',
                    plan_id:        flora.id,
                    description:    'Little Baby Seedling')
early = Phase.create!(name:           'Early Growth', 
                     plan_id:        flora.id, 
                     description:    'A Whole New Plant')
mid = Phase.create!(name:           'Mid Growth', 
                   plan_id:        flora.id, 
                   description:    'Taking it Higher and Higher')

puts "Seeding Media..."
coco = Medium.create!(name:        'CoCo', 
                     description: 'Made from Coconut')

puts "Seeding Weeks..."
week_one = Week.create!(phase_id: Phase.first.id,
                       plan_id: Plan.first.id,
                       feed_frequency: 4)

puts "Seeding Nutrients..."
Nutrient.create!(name:               'FloraGrow', 
                plan_id:            flora.id, 
                phase_id:           seed.id, 
                week_id: week_one.id,
                amount_per_feeding: 1)

puts "Seeding Users..."
User.create(email: "test@test.com", password: "password", password_confirmation: "password")

puts "Seeding Plants..."
Plant.create!(user_id: User.first.id,
              crop_id: cannabis.id,
              variant_id: Variant.first.id,
              medium_id: Medium.first.id,
              light_wattage: 100,
              plan_id: Plan.first.id,
              phase_id: Phase.first.id,
              start_date: Date.today,
              next_notification_date: Date.today)

puts "Seeding Health Reports..."
HealthReport.create!(height_in_centimeters: 100,
                     air_humidity: 12,
                     light_schedule: 2,
                     day_air_temp: 2,
                     night_air_temp: 2,
                     watering_volume_per_day: 12,
                     container_size: 12,
                     ph: 12,
                     plant_id: Plant.first.id,
                     diagnosis: "healthy",
                     comments: "nothing to see here")
