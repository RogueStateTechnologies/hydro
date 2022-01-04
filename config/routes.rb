Rails.application.routes.draw do
  resources :phases
  resources :media
  resources :plans
  resources :variants
  resources :crops
  # Root Route, where to go at application load.
  root to: 'plants#index'

  resources :plants
end
