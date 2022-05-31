require 'rails_helper'
 
# Loads Seeds from db/seed.rb before running tests for ease of testing associations. Will hopefully be able to replace with better configured factories.
Rails.application.load_seed

RSpec.describe Phase, :type => :model do

  it 'should be invalid if name is not unique' do
    phase = FactoryBot.build(:phase)
    expect(phase).to_not be_valid
  end

  it 'should be invalid if name is not present' do
    phase = FactoryBot.build(:phase, name: '')
    expect(phase).to_not be_valid
  end
  it 'should be invalid if description is too long' do
    phase = FactoryBot.build(:phase, description: Faker::Lorem.paragraph_by_chars(number: 600))
    expect(phase).to_not be_valid
  end

  it 'should be invalid if crop is not present' do
    phase = FactoryBot.build(:phase, crop: nil)
    expect(phase).to_not be_valid
  end

  it 'should be invalid if crop does not exist'
  it 'should be valid' do
    phase = FactoryBot.build(:phase, name: 'harvest')
    expect(phase).to be_valid
  end
end