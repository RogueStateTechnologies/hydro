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
    end
  end

  resources :crops do
    resources :phases
    resources :nutrients
  end

  # Root Route, where to go at application load.
  devise_scope :user do

    root to: "devise/sessions#new"
  end
end
