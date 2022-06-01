require 'rails_helper'
Rails.application.load_seed
RSpec.describe Nutrient, :type => :model do

  it 'should be invalid without a name' do
    nutrient = FactoryBot.build(:nutrient, name: nil)
    expect(nutrient).to_not be_valid
  end

  it 'should be invalid without a manufacturer' do
    nutrient = FactoryBot.build(:nutrient, manufacturer: nil)
    expect(nutrient).to_not be_valid
  end

  it 'should be invalid without a compound' do
    nutrient = FactoryBot.build(:nutrient, compound: nil)
    expect(nutrient).to_not be_valid
  end
  it 'should be invalid without a crop' do
    nutrient = FactoryBot.build(:nutrient, crop_id: nil)
    expect(nutrient).to_not be_valid
  end
  it 'should be invalid without a phase' do
    nutrient = FactoryBot.build(:nutrient, phase_id: nil)
  end

  it 'should be valid' do
    expect(FactoryBot.create(:nutrient)).to be_valid
  end
end