Rails.application.routes.draw do
  devise_for :users
  root 'artists#index'
  resources :artists do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
