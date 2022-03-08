# frozen_string_literal: true

Rails.application.routes.draw do

  
  resources :reports
  devise_for :users


  resources :users do
    resources :plants
  end
  resources :plants do
    resources :health_reports
    resources :harvest_reports
  end


  resources :nutrients
  resources :phases
  resources :media
  resources :plans
  resources :variants
  resources :crops
  # Root Route, where to go at application load.
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
