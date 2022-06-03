require 'rails_helper'

Rails.application.load_seed
RSpec.describe 'HarvestReport Requests', :type => :request do

  it 'should render harvest_reports#index' do
    sign_in User.first

    get '/plants/1/harvest_reports'
    expect(response).to render_template(:index)
  end

  it 'should render harvest_reports#show' do
    sign_in User.first

    get '/plants/1/harvest_reports/1'
    expect(response).to render_template(:show)
  end

  it 'should render harvest_reports#new' do
    sign_in User.first

    get '/plants/1/harvest_reports/new'
    expect(response).to render_template(:new)
  end

  it 'should render harvest_reports#edit' do
    sign_in User.first

    get '/plants/1/harvest_reports/1/edit'
    expect(response).to render_template(:edit)
  end

  it 'should render harvest_reports#show after successful creation' do
    sign_in User.first

    get '/plants/1/harvest_reports/new'
    expect(response).to render_template(:new)

    post '/plants/1/harvest_reports', :params => { :harvest_report => { height_in_centimeters: 100, amount_harvested: 100, plant_id: Plant.first.id } }
    expect(response).to render_template(:show)
  end

  it 'should render harvest_reports#new after failed creation' do
    sign_in User.first

    get '/plants/1/harvest_reports/new'
    expect(response).to render_template(:new)

    post '/plants/1/harvest_reports', :params => { :harvest_report => { height_in_centimeters: nil} }
    expect(response).to render_template(:new)
  end

  it 'should render harvest_reports#show after successful edit' do 
    sign_in User.first

    get '/plants/1/harvest_reports/1/edit'
    expect(response).to render_template(:edit)

    patch '/plants/1/harvest_reports/1', :params => { :harvest_report => { height_in_centimeters: 200 } }
    expect(response).to render_template(:show)
  end

  it 'should render harvest_reports#edit after failed edit' do
    sign_in User.first

    get '/plants/1/harvest_reports/1/edit'
    expect(response).to render_template(:edit)

    patch '/plants/1/harvest_reports/1', :params => { :harvest_report => { height_in_centimeters: nil } }
    expect(response).to render_template(:edit)
  end
  it 'should render harvest_reports#index after successful deletion' do
    sign_in User.first

    delete '/plants/1/harvest_reports/1'
    expect(response).to render_template(:index)
  end

end