require 'rails_helper'

RSpec.describe Crop, :type => :model do 

  it "is not valid without name" do
    crop = FactoryBot.build(:crop, name: nil)
    expect(crop).to_not be_valid
  end

  it "is not valid without description" do
    crop = FactoryBot.build(:crop, description: nil)
    expect(crop).to_not be_valid
  end

  it "is valid" do
    expect(FactoryBot.create(:crop)).to be_valid
  end

end