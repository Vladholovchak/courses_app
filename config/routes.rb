Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users
  root 'home#index'
  get 'home/activity'
  get 'privacy_policy', to: 'home#privacy_policy'
end
