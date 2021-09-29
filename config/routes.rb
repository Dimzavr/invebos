# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    resource :session, only: %i[new create destroy]

    resources :users, only: %i[new create edit update profile]

    resources :franchises

    namespace :admin do
      resources :users, only: %i[index create]
    end
    root 'pages#index'
    get '/pricing' => 'pages#pricing'
    get '/add' => 'pages#add'
    get '/business_magazine' => 'pages#business_magazine'

  end  
end
