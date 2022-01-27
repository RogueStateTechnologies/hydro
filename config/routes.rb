Rails.application.routes.draw do
  devise_for :users
  resources :health_reports
  resources :harvest_reports
  resources :growth_reports
  resources :nutrients
  resources :phases
  resources :media
  resources :plans
  resources :variants
  resources :crops
  # Root Route, where to go at application load.
  root to: 'plants#index'

  resources :plants
end
