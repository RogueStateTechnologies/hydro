FactoryBot.define do
  factory :crop do
    name { Faker::Cannabis.strain }
    description { Faker::Cannabis.type }
  end
end
