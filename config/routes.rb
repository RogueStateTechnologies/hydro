Rails.application.routes.draw do
  # Root Route, where to go at application load.
  root to: 'plants#index'

  resources :plants
end
