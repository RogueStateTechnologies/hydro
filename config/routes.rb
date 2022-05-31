# frozen_string_literal: true

Rails.application.routes.draw do

  resources :comments
  resources :notifications
  devise_for :user, :controllers => { registrations:  'users/registrations'}

  resources :plants do
    resources :health_reports
    resources :harvest_reports
    member do
      get 'timeline'
      get 'plan'
    end
  end

  resources :crops do
    resources :phases
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
