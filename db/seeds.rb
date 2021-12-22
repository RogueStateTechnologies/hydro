
(0..10).each do 
  Plant.create(
    start_date: Date.today,
    harvested: false,
    current_stage: "Veg",
    grow_medium: "CoCo",
    nutrient_mix: "Fox Farm",
    light_intensity: "10kw",
    growth_track: "On Track",
    plant_notes: "Looks good"
  )
  Week.create(
    start_date: Date.today,
    end_date: Date.today,
    feed_plan: 1,
    plant: 1,
    performance: "On Track"
  )
  Stage.create(
    feed_plan: 1,
    mix_per_feeding_in_mililiters: 23,
    light_intensity_in_wattage: 3400000,
    duration_in_weeks: 4,
    feedings_per_week: 6,
    mix_usage_in_mililiters: 43
  )
  FeedPlan.create(
    name: "Fox Farm",
    stage_one_id: 1,
    stage_one_cost_in_pennies: 100,
    stage_two_id: 2,
    stage_two_cost_in_pennies: 100,
    stage_three_id: 3,
    stage_three_cost_in_pennies: 100,
    unit_size_in_mililiters: 1000,
    unit_cost_in_pennies: 100
  )
  Yield.create(
    harvest_date: Date.today,
    cost_in_pennies: 10000,
    weight_in_grams: 1000,
    plant_id: 001,
    value_per_weight_in_pennies: 1000000,
    profit_in_pennies: 10000,
  )
end               
