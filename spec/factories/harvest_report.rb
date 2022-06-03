FactoryBot.define do
  factory :harvest_report do
    height_in_centimeters { 100 }
    amount_harvested { 100 }
    plant_id { Plant.first.id }
  end
end