require 'rails_helper'

RSpec.describe Plant, :type => :model do 
  Rails.application.load_seed

  it 'is not valid without valid published boolean'

  it 'is not valid without valid origin' do
    plant = FactoryBot.build(:plant, origin: nil)
    expect(plant).to_not be_valid
  end

  it 'is not valid without valid environment' do
    plant = FactoryBot.build(:plant, environment: nil)
    expect(plant).to_not be_valid
  end
  it 'is not valid without valid light_system' do
    plant = FactoryBot.build(:plant, light_system: nil)
    expect(plant).to_not be_valid
  end

  it 'is not valid without valid container_size' do
    plant = FactoryBot.build(:plant, container_size: nil)
    expect(plant).to_not be_valid
  end
  it 'is not valid without valid feedings_per_week' do
    plant = FactoryBot.build(:plant, feedings_per_week: nil)
    expect(plant).to_not be_valid
  end

  it 'is not valid without valid user' do
    plant = FactoryBot.build(:plant, user: nil)
    expect(plant).to_not be_valid
  end

  it 'is not valid without valid crop' do
    plant = FactoryBot.build(:plant, crop: nil)
    expect(plant).to_not be_valid
  end
  it 'is not valid without valid phase' do
    plant = FactoryBot.build(:plant, phase: nil)
  end

  it 'should create new plant with valid attributes' do
    expect(FactoryBot.create(:plant)).to be_valid
  end
end