FactoryBot.define do
  factory :user do
    email = Faker::Internet.email
    password = Faker::Internet.password(min_length: 8, max_length: 30, mix_case: true, special_characters: true)
    email { email }
    email_confirmation { email }
    password { password }
    password_confirmation { password }
    user_name { Faker::Internet.username(specifier: 1..16) }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end