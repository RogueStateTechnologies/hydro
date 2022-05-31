FactoryBot.define do
  factory :phase do
    name { "Sprouting" }
    crop { Crop.first }
    description { "Just a little Seedling" }
  end
end