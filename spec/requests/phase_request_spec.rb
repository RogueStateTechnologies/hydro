require 'rails_helper'

RSpec.describe 'Phase Requests', :type => :request do

  it 'renders phase#index' do
    get '/crops/1/phases'

    expect(response).to render_template(:index)
  end
  it 'renders phase#show'
  it 'renders phase#new'
  it 'renders phase#edit'

  it 'redirects to phase#show on successful creation'
  it 'redirects to phase#new on failed creation'
  it 'redirects to phase#show on successful update'
  it 'redirects to phase#edit on failed update'
  it 'redirects to phase#index on successful destroy'
  it 'redirects to phase#show on failed destroy'

end