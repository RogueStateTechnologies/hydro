require 'rails_helper'

RSpec.describe Plant, :type => :model do 
  Rails.application.load_seed

  it 'is not valid without valid published boolean'

  it 'is not valid without valid origin'
  it 'is not valid without valid environment'
  it 'is not valid without valid light_system'

  it 'is not valid without valid container_size'
  it 'is not valid without valid feedings_per_week'

  it 'is not valid without valid user'
  it 'is not valid without valid crop'
  it 'is not valid without valid phase'

  it 'should create new plant with valid attributes' do
    expect(FactoryBot.create(:plant)).to be_valid
  end
end