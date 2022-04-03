# frozen_string_literal: true

Rails.application.routes.draw do

  resources :plant_dates
  resources :phase_weeks
  resources :reports
  devise_for :user

  resources :plants do
    resources :health_reports
    resources :harvest_reports
    member do
      get 'timeline'
      get 'plan'
    end
  end

  resources :crops do
    resources :variants
    resources :plans 
  end

  resources :plans do
    resources :phases, except: :index
    resources :nutrients, except: :index
  end

  resources :nutrients, only: :index
  resources :phases, only: :index
  resources :media, only: :index
  resources :crops, only: :index
  # Root Route, where to go at application load.
  devise_scope :user do

    root to: "devise/sessions#new"
  end
end
