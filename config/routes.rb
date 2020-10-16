Rails.application.routes.draw do
  devise_for :users
  root to: "users#front"
  get 'users/search' 
  resources :users, only: [:index, :show] do
    resources :profiles, only: [:new, :create, :edit, :update]
  end
  resources :rooms, only: [:create, :show] do
    resources :messages, only: :create
  end
end
