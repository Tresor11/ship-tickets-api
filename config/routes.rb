# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :cities, only: %i[index show]
  resources :companies, only: %i[index show]
  resources :ships, only: %i[index show]
  resources :trips, only: %i[index show]
  resources :frequencies, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
