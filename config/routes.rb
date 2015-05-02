Rails.application.routes.draw do
  resources :categories
  resources :articles
  root to: 'visitors#index'
  devise_for :users
end
