Rails.application.routes.draw do
  devise_for :users
  root to: "users#front"
  resources :users, only: [:index, :show] do
    resources :profiles, only: [:new, :create, :edit, :update]
  end
  resources :rooms, only: [:show, :create] do
    resources :messages, only: :create
  end
end
