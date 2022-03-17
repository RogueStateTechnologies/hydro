# frozen_string_literal: true

Rails.application.routes.draw do

  
  resources :phase_weeks
  resources :reports
  devise_for :users


  resources :users do
    resources :plants
  end
  resources :plants do
    resources :health_reports
    resources :harvest_reports
  end

  resources :crops do
    resources :variants, except: :index
    resources :plans, except: :index 
  end

  resources :plans do
    resources :phases, except: :index
    resources :nutrients, except: :index
  end

  resources :nutrients, only: :index
  resources :phases, only: :index
  resources :media, only: :index
  resources :plans, only: :index
  resources :variants, only: :index
  resources :crops, only: :index
  # Root Route, where to go at application load.
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
