require 'rails_helper'

Rails.application.load_seed
RSpec.describe 'Plant Requests', :type => :request do

  it 'should render plant#index' do 
    sign_in User.first

    get '/plants'
    expect(response).to render_template(:index) 
  end

  it 'should render plant#show' do
    sign_in User.first

    get '/plants/1'
    expect(response).to render_template(:show)
  end

  it 'should render plant#new' do
    sign_in User.first

    get '/plants/new'
    expect(response).to render_template(:new)
  end

  it 'should render plant#edit' do
    sign_in User.first

    get '/plants/1/edit'
    expect(response).to render_template(:edit)
  end

  it 'should render plant#show after successful creation' do
    sign_in User.first

    get '/plants/new'
    expect(response).to render_template(:new)

    post '/plants', :params => { :plant => { published: true, origin: 'seed', environment: 'indoor', medium: 'soil', light_system: 'natural', container_size: 10, feedings_per_week: 10, user_id: User.first.id, crop_id: Crop.first.id, phase_id: Phase.first.id } }

  end

  it 'should render plant#new after faild creation' do 
    sign_in User.first

    get '/plants/new'
    expect(response).to render_template(:new)

    post '/plants', :params => { :plant => { crop_id: Crop.first.id } }
    expect(response).to render_template(:new)
  end

  it 'should render plant#show after successful edit' do
    sign_in User.first

    get '/plants/1/edit'
    expect(response).to render_template(:edit)

    patch '/plants/1', :params => { :plant => { crop_id: Crop.last.id } }
    expect(response).to render_template(:show)
  end

  it 'should render plant#edit after failed edit' do
    sign_in User.first

    get '/plants/1/edit'
    expect(response).to render_template(:edit)

    patch '/plants/1', :params => { :plant => { origin: nil } }
    expect(response).to render_template(:edit)
  end

  it 'should render plant#index after deletion' do
    sign_in User.first

  delete '/plants/1'
    expect(response).to render_template(:index)
  end

end