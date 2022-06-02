require 'rails_helper'

Rails.application.load_seed
RSpec.describe 'HealthReport Request', :type => :request do

  it 'should render healthReport#index' do
    sign_in User.first

    get '/plants/1/health_reports'
    expect(response).to render_template(:index)
  end

  it 'should render healthReport#new' do
    sign_in User.first

    get '/plants/1/health_reports/new'
    expect(response).to render_template(:new)
  end

  it 'should render heatlhReport#show' do
    sign_in User.first

    get '/plants/1/health_reports/1'
    expect(response).to render_template(:show)
  end

  it 'should render healthReport#edit' do
    sign_in User.first

    get '/plants/1/health_reports/1/edit'
    expect(response).to render_template(:edit)
  end

  it 'should create a new report and render healthReport#show' do
    sign_in User.first

    get '/plants/1/health_reports/new'
    expect(response).to render_template(:new)

    post '/plants/1/health_reports', :params => { :health_report => { plant_id: Plant.first.id, height_in_centimeters: 100, average_air_temp: 25, ph: 4, light_exposure: 10, root_health: 'good', diagnosis: 'healthy' } }
    expect(response).to render_template(:show)
  end

  it 'should fail to create a new report and render healthReport#new' do
    sign_in User.first

    get '/plants/1/health_reports/new'
    expect(response).to render_template(:new)

    post '/plants/1/health_reports', :params => { :health_report => { ph: nil } }
    expect(response).to render_template(:new)
  end

  it 'should update an existing report and render healthReport#show' do
    sign_in User.first

    get '/plants/1/health_reports/1/edit'
    expect(response).to render_template(:edit)

    patch '/plants/1/health_reports/1', :params => { :health_report => { light_exposure: 24 } }
    expect(response).to render_template(:show)
  end

  it 'should fail to update an exsiting report and render healthReport#edit' do
    sign_in User.first

    get '/plants/1/health_reports/1/edit'
    expect(response).to render_template(:edit)

    patch '/plants/1/health_reports/1', :params => { :health_report => { ph: nil} }
    expect(response).to render_template(:edit)
  end

  it 'should delete and existing report and render helathReport#index' do
    sign_in User.first

    delete '/plants/1/health_reports/1'
    expect(response).to render_template(:index)
  end
end