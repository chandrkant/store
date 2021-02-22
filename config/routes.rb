# frozen_string_literal: true

Rails.application.routes.draw do
  resources :carts
  resources :items
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    omniauth_callbacks: 'omni_auth'
  }
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    get 'forgot_password', to: 'users/passwords#new'
    get 'reset_password', to: 'users/passwords#edit'
  end

    get 'cards/show'
    get '/order-placed' =>"cards#success_page",as: :success_page
  resources :products

  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]



  root 'shops#index'
end
