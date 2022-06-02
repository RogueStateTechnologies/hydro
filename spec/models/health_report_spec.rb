require 'rails_helper'

RSpec.describe HealthReport, :type => :model do

  it 'should be invalid with invalid height' do
    report = FactoryBot.build(:health_report, height_in_centimeters: nil)
    expect(report).to_not be_valid
  end

  it 'should be invalid with invalid temp' do
    report = FactoryBot.build(:health_report, average_air_temp: nil)
    expect(report).to_not be_valid
  end

  it 'should be invalid with invalid ph' do
    report = FactoryBot.build(:health_report, ph: nil)
    expect(report).to_not be_valid
  end

  it 'should be invalid with invalid light' do
    report = FactoryBot.build(:health_report, light_exposure: nil)
    expect(report).to_not be_valid
  end

  it 'should be invalid with invalid roots' do
    report = FactoryBot.build(:health_report, root_health: nil)
    expect(report).to_not be_valid
  end

  it 'should be valid' do
    expect(FactoryBot.build(:health_report)).to be_valid
  end
end