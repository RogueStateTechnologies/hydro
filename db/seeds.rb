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
early_growth = Phase.create!(name:           'Early Growth', 
                     plan_id:        flora.id, 
                     description:    'A Whole New Plant')
late_growth = Phase.create!(name:           'Late Growth', 
                   plan_id:        flora.id, 
                   description:    'Soon To Bloom')
transition = Phase.create!(name:    'Transition',
                          plan_id: flora.id,
                          description: 'Moving On Up To The Soil Side')
early_bloom = Phase.create!(name: 'Early Bloom',
                            plan_id: flora.id,
                          description: 'Buds From The Start')
mid_bloom = Phase.create!(name: 'Mid Bloom',
                        plan_id: flora.id,
                        description: 'Everythings Coming Up Greenhouse')
late_bloom = Phase.create!(name: 'Late Bloom',
                          plan_id: flora.id,
                          description: 'Harvest is Coming')
ripen = Phase.create!(name: 'Ripen',
                      plan_id: flora.id,
                      description: "Ripe and Ready")
flush = Phase.create!(name: 'Flush',
                      plan_id: flora.id,
                      description: 'Clean that plant up')

puts "Seeding Media..."
coco = Medium.create!(name:        'CoCo', 
                     description: 'Made from Coconut')

puts "Seeding Weeks..."
week_one = Week.create!(phase_id: seed.id,
                       plan_id: Plan.first.id,
                       feed_frequency: 4)
week_two = Week.create!(phase_id: early_growth.id,
                        plan_id: Plan.first.id,
                        feed_frequency: 4)
week_three = Week.create!(phase_id: late_growth.id,
                          plan_id: Plan.first.id,
                          feed_frequency: 4)

puts "Seeding Nutrients..."
Nutrient.create!(name:               'FloraGro', 
                plan_id:            flora.id, 
                phase_id:           seed.id, 
                week_id: week_one.id,
                amount_per_feeding: 1)
Nutrient.create!(name:               'FloraMicro', 
                  plan_id:            flora.id, 
                  phase_id:           seed.id, 
                  week_id: week_one.id,
                  amount_per_feeding: 1)                
Nutrient.create!(name:               'FloraBoom', 
                    plan_id:            flora.id, 
                    phase_id:           seed.id, 
                    week_id: week_one.id,
                    amount_per_feeding: 1)
Nutrient.create!(name:               'RapidStart', 
                      plan_id:            flora.id, 
                      phase_id:           seed.id, 
                      week_id: week_one.id,
                      amount_per_feeding: 1)
Nutrient.create!(name:               'DiamondNectar', 
                        plan_id:            flora.id, 
                        phase_id:           seed.id, 
                        week_id: week_one.id,
                        amount_per_feeding: 1)
Nutrient.create!(name:               'Liquid KoolBloom', 
                          plan_id:            flora.id, 
                          phase_id:           seed.id, 
                          week_id: week_one.id,
                          amount_per_feeding: 1)
Nutrient.create!(name: 'Floralicisious Plus', 
                plan_id:            flora.id, 
                            phase_id:           seed.id, 
                            week_id: week_one.id,
                            amount_per_feeding: 1)
Nutrient.create!(name:               'Flora Blend', 
                              plan_id:            flora.id, 
                              phase_id:           seed.id, 
                              week_id: week_one.id,
                              amount_per_feeding: 1)
Nutrient.create!(name:               'FloraBlend', 
                                plan_id:            flora.id, 
                                phase_id:           seed.id, 
                                week_id: week_one.id,
                                amount_per_feeding: 1)
Nutrient.create!(name:               'Flora Nectar', 
                                  plan_id:            flora.id, 
                                  phase_id:           seed.id, 
                                  week_id: week_one.id,
                                  amount_per_feeding: 1)
Nutrient.create!(name:               'KoolBloom', 
                                    plan_id:            flora.id, 
                                    phase_id:           seed.id, 
                                    week_id: week_one.id,
                                    amount_per_feeding: 1)
Nutrient.create!(name:               'FloraKleen', 
                                      plan_id:            flora.id, 
                                      phase_id:           seed.id, 
                                      week_id: week_one.id,
                                      amount_per_feeding: 1)