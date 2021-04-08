Rails.application.routes.draw do
  devise_for :users
  root 'artists#index'
  resources :artists
  resources :users, only: :show
end
