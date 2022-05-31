FactoryBot.define do
  factory :plant do
    published { true }
   
    origin { "clone" }
    environment { "indoor" }
    medium { "soil" }
    light_system { "natural"}

    container_size { 30 }
    feedings_per_week { 5 }

    user { User.first }
    crop { Crop.first }
    phase { Phase.first }

  end
end