# frozen_string_literal: true

cannabis = Crop.create(name: "Cannabis", description: "Its weed...")
tomatoes  = Crop.create(name: "Tomatoes", description: "Red and Juciy")
lettuce = Crop.create(name: "Lettuce", description: "Leafy and Wonderful")
strawberries = Crop.create(name: "Strawberries", description: "A Sweet Treat")
pineapple = Crop.create(name: "Pineappple", description: "Peel before eating")
puts "Crops Seeded!"

og = Variant.create(name: "OG Kush", description: "A quality strain", crop_id: cannabis.id)
hot = Variant.create(name: "Hot House", description: "Big tomoatoes", crop_id: tomatoes.id)
bibb =Variant.create(name: "Bibb", description: "Funny Looking", crop_id: lettuce.id)
honey =Variant.create(name: "Honeoye", description: "A Strawberry", crop_id: strawberries.id)
kings = Variant.create(name: "Kings Hawiian", description: "Tart pizza topping", crop_id: pineapple.id)
puts "Variants Seeded!"

flora = Plan.create(name: "Flora Series", description: "A Solid Plan", crop_id: cannabis.id)
puts "Plans Seeded!"

seed = Phase.create(name: "Seed Phase", duration: 1, plan_id: flora.id, description: "Little Baby Seedling", feed_frequency: 2)
early = Phase.create(name: "Early Growth", duration: 2, plan_id: flora.id, description: "A Whole New Plant", feed_frequency: 4)
mid = Phase.create(name: "Mid Growth", duration: 2, plan_id: flora.id, description: "Taking it Higher and Higher", feed_frequency: 3)
puts "Phases Seeded!"

coco = Medium.create(name: "CoCo", description: "Made from Coconut")
puts "Media Seeded!"

Nutrient.create(name: "FloraGrow", plan_id: flora.id, phase_id: seed.id, amount_per_feeding: 1)

plant = Plant.create(crop_id: cannabis.id, variant_id: og.id, medium_id: coco.id, plan_id: flora.id, phase_id: seed.id, start_date: Date.today)

HealthReport.create( plant_id: plant.id, plant_image: "Not An Image", ph: 1, diagnosis: "Healthy", comments: "Nothing to see here"  )