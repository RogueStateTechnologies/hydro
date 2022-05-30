require 'rails_helper'

RSpec.describe 'Crops Requests', :type  => :request do

  it 'renders crops#index' do
    sign_in User.first
    get '/crops'
    expect(response).to render_template(:index)
  end

  it 'creates a crop and redirects to crops#show' do
    sign_in User.first
    get '/crops/new'
    expect(response).to render_template(:new)

    post '/crops', :params => { :crop => { name: 'Cannabis', description: 'Its WEEEEEEED!'}}
    expect(response).to redirect_to(crop_url(assigns(:crop)))
    follow_redirect!

    expect(response).to render_template(:show)
  end

  it 'redirects to crops#new if creation fails' do
    sign_in User.first
    get '/crops/new'
    expect(response).to render_template(:new)

    post '/crops', :params => { :crop => { name: '', description: '' } }
    expect(response).to render_template(:new)
  end

  it 'updates a crop and redirects to crops#show' do
    sign_in User.first
    get '/crops/1/edit'
    expect(response).to render_template(:edit)

    patch '/crops/1', :params => { :crop => { name: 'Apples' } }
    expect(response).to redirect_to(crop_url(assigns(:crop)))
  end
  it 'renders crops#edit if update fails' do
    sign_in User.first
    get '/crops/1/edit'
    expect(response).to render_template(:edit)

    patch '/crops/1', :params => { :crop => {name: ''} }
    expect(response).to render_template(:edit)
  end

  it 'destroys a crop and redirects to crops#index' do
    sign_in User.first
    get '/crops/1'
    expect(response).to render_template(:show)

    delete '/crops/1'
    expect(response).to redirect_to(crops_url)
  end

end