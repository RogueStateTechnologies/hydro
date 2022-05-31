require 'rails_helper'

RSpec.describe User, :type => :model do

  it "is not valid without email" do
    user = FactoryBot.build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without email confirmation" do
    user = FactoryBot.build(:user, email_confirmation: nil)
    expect(user).to_not be_valid
  end
  
  it "is not valid if email and email_confrimation do not match" do
    user = FactoryBot.build(:user, email: 'test@testing.com')
    expect(user).to_not be_valid
  end

  it "is not valid if email is wrong format" do
    user = FactoryBot.build(:user, email: 'u.ser.com', email_confirmation: 'u.ser.com')
    expect(user).to_not be_valid
  end

  it "is not valid without password" do
    user = FactoryBot.build(:user, password: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without password confimramtion" do
    user = FactoryBot.build(:user, password_confirmation: nil)
    expect(user).to_not be_valid
  end

  it "is not valid if password and password_confirmation do not match" do
    user = FactoryBot.build(:user, password: 'T@t3jr4y')
    expect(user).to_not be_valid
  end

  it "is not valid if password is too short" do
    user = FactoryBot.build(:user, password: '1', password_confirmation: '1')
    expect(user).to_not be_valid
  end

  it "is not valid if password is too long" do
    user = FactoryBot.build(:user, password: '1jhds#&**1hjG2gecgsdba3897gv8723yugd9u23', password_confirmation: '1jhds#&**1hjG2gecgsdba3897gv8723yugd9u23')
    expect(user).to_not be_valid
  end

  it "is not valid if password is wrong format" do
    user = FactoryBot.build(:user, password: '----------', password_confirmation: '----------')
    expect(user).to_not be_valid
  end

  it "is not valid without first name" do
    user = FactoryBot.build(:user, first_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without last name" do
    user = FactoryBot.build(:user, last_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a user name" do
    user = FactoryBot.build(:user, user_name: nil)
    expect(user).to_not be_valid
  end

  it "is valid" do
    expect(FactoryBot.create(:user)).to be_valid
  end
    
end