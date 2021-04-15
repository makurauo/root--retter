Rails.application.routes.draw do
  devise_for :users
  root 'artists#index'
  resources :artists do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: :show
  get 'users' => 'users#dummy'
end
