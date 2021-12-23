
(0..10).each do 
  Plant.create(
    crop: "Cannabis",
    start_date: Date.today,
    estmd_harvest_date: Date.today,
    current_week: 1,
    grow_medium: 5,
    food_plan: 3,
    light_intensity: "10kw",
    growth_status: "On Track",
    harvest: 3,
  )
end               
