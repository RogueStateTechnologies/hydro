FactoryBot.define do
  factory :nutrient do
    name { 'FloraGrow' }
    manufacturer { 'Fox Farms' }
    compound { 'Potassium Chloride' }
    crop_id { Crop.first.id }
  end
end