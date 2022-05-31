require 'rails_helper'

# Loads Seeds from db/seed.rb before running tests for ease of testing associations. Will hopefully be able to replace with better configured factories.
Rails.application.load_seed

RSpec.describe 'Phase Requests', :type => :request do

  it 'renders phase#index' do
    get '/crops/1/phases'

    expect(response).to render_template(:index)
  end

  it 'renders phase#show' do
    get '/crops/1/phases/1'

    expect(response).to render_template(:show)
  end

  it 'renders phase#new' do
    sign_in User.first

    get '/crops/1/phases/new'

    expect(response).to render_template(:new)
  end

  it 'renders phase#edit' do
    sign_in User.first

    get '/crops/1/phases/1/edit'

    expect(response).to render_template(:edit)
  end

  it 'redirects to phase#index on successful creation' do
    sign_in User.first

    get '/crops/1/phases/new'
    expect(response).to render_template(:new)

    post '/crops/1/phases', :params => { :phase => { name: 'Bloom', description: 'Such delicate little flowers', crop_id: Crop.first.id } }
    expect(response).to render_template(:show)
  end

  it 'redirects to phase#new on failed creation' do
    sign_in User.first

    get '/crops/1/phases/new'
    expect(response).to render_template(:new)

    post '/crops/1/phases', :params => { :phase => { name: '', description: '', crop_id: Crop.first.id } }
    expect(response).to render_template(:new)
  end

  it 'redirects to phase#show on successful update' do
    sign_in User.first

    get '/crops/1/phases/1/edit'
    expect(response).to render_template(:edit)

    patch '/crops/1/phases/1', :params => { :phase => { name: 'Transplant' } }
    expect(response).to render_template(:show)
  end

  it 'redirects to phase#edit on failed update' do
    sign_in User.first

    get '/crops/1/phases/1/edit'
    expect(response).to render_template(:edit)

    patch '/crops/1/phases/1', :params => { :phase => { name: '' } }
    expect(response).to render_template(:edit)
  end

  it 'redirects to phase#index on successful destroy' do
    sign_in User.first
    
    get '/crops/1/phases/1'
    expect(response).to render_template(:show)

    delete '/crops/1/phases/1'
    expect(response).to render_template(:index)
  end

end