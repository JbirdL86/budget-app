# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :activities
  resources :groups

  root "activities#index"
end
