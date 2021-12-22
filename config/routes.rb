Rails.application.routes.draw do
  # Root Route, where to go at application load.
  root to: 'plants#index'

  resources :yields
  resources :feed_plans
  resources :stages
  resources :weeks
  resources :plants
  resources :harvests
end
