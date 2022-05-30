FactoryBot.define do
  factory :user do
    email { 'test@test.com' }
    email_confirmation { 'test@test.com' }
    password { 'p@ssW0rd' }
    password_confirmation { 'p@ssW0rd' }
    user_name { 'user_name' }
    first_name { 'first' }
    last_name { 'last' }
  end
end