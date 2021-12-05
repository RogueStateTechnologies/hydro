Rails.application.routes.draw do
  resources :yields
  resources :feed_plans
  resources :stages
  resources :weeks
  resources :plants
  resources :harvests
end
