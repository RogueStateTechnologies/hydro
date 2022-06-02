FactoryBot.define do
  factory :health_report do
  plant
    height_in_centimeters { 1000 }
    average_air_temp { 76 }
    ph { 4.6 }
    light_exposure { 12 }
    root_health { 'good' }
    diagnosis { "Healthy"}
  end
end