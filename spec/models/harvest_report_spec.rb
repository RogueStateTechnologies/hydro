require 'rails_helper'

Rails.application.load_seed
RSpec.describe HarvestReport, :type => :model do

  it 'should be invalid without valid height' do
    report = FactoryBot.build(:harvest_report, height_in_centimeters: nil)
    expect(report).to_not be_valid
  end

  it 'should be invalid without valid amount' do
    report = FactoryBot.build(:harvest_report, amount_harvested: nil)
    expect(report).to_not be_valid
  end

  it 'should be invalid without valid plant' do
    report = FactoryBot.build(:harvest_report, plant_id: nil)
    expect(report).to_not be_valid
  end
  it 'should be valid' do
    report = FactoryBot.build(:harvest_report)
    expect(report).to be_valid
  end

end