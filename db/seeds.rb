
(0..10).each do 
  Harvest.create(date:                       Date.today,
                num_plants:                  10, 
                expected_yield:              100, 
                actual_yield:                100, 
                cost_per_weight_in_pennies:  100, 
                value_per_weight_in_pennies: 100, 
                profit_expected_in_pennies:  100, 
                profit_actual_in_pennies:    10000)
end               
