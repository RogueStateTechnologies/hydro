require 'rails_helper'

Rails.application.load_seed
RSpec.describe 'Nutrient Request', :type => :request do

  it 'should render nutrients#index' do
    sign_in User.first

    get '/crops/1/nutrients'
    expect(response).to render_template(:index)
  end

  it 'should render nutrients#show' do
    sign_in User.first

    get '/crops/1/nutrients/1'
    expect(response).to render_template(:show)
  end

  it 'should render nutrients#new' do
    sign_in User.first

    get '/crops/1/nutrients/new'
    expect(response).to render_template(:new)
  end
  it 'should render nutrients#edit' do 
    sign_in User.first

    get '/crops/1/nutrients/1/edit'
  end

  it 'should redirect to nutrients#show after successful creation' do
    sign_in User.first

    get '/crops/1/nutrients/new'
    expect(response).to render_template(:new)

    post '/crops/1/nutrients', :params => { :nutrient => { name: 'FloraGrow', manufacturer: 'Fox Farms', compound: 'Nitrogen' } }
  end

  it 'should redirect to nutrients#new after failed creation' do
    sign_in User.first

    get '/crops/1/nutrients/new'
    expect(response).to render_template(:new)

    post '/crops/1/nutrients', :params => { :nutrient => { name: '', manufacturer: 'Fox Farms', compound: 'Nitrogen' } }
    expect(response).to render_template(:new)
  end

  it 'should redirect to nutrients#show after successful edit' do
    sign_in User.first

    get '/crops/1/nutrients/1/edit'
    expect(response).to render_template(:edit)

    patch '/crops/1/nutrients/1', :params => { :nutrient => { name: 'FloraGrow' } }
    expect(response).to render_template(:show)
  end

  it 'should redirect to nutrients#edit after failed edit' do
    sign_in User.first

    get '/crops/1/nutrients/1/edit'
    expect(response).to render_template(:edit)

    patch '/crops/1/nutrients/1', :params => { :nutrient => { name: ''} }
    expect(response).to render_template(:edit)
  end

  it 'should redirect to nutrients#index after successful deletion' do
    sign_in User.first

    get '/crops/1/nutrients/1'
    expect(response).to render_template(:show)

    delete '/crops/1/nutrients/1'
    expect(response).to render_template(:index)
  end

end
