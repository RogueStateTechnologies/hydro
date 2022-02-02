# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'users/sign_in'

  devise_for :users

  resources :users, only: [:show] do
    resources :plants
  end

  resources :plants, only: %i[show edit update destroy] do
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
end
