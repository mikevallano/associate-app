Rails.application.routes.draw do
  resources :pigs
  resources :blags
  root to: 'visitors#index'
  resources :categories
  resources :articles
  devise_for :users
end
