Rails.application.routes.draw do
  devise_for :users

  resources :products
  resources :users
  resources :categories
  resources :sellers

  root to: 'home#index'
end
