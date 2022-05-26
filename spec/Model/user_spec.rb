require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'can signup' do
    user = FactoryBot.create(:user)
  end
end