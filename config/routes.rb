# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :groups do
    resources :activities
  end

  root "groups#index"
end
