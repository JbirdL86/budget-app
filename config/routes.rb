# frozen_string_literal: true

Rails.application.routes.draw do
  resources :activities
  resources :groups
  resources :users

  root "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
