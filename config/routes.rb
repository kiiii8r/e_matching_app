Rails.application.routes.draw do
  devise_for :users
  root to: "users#front"
  resources :users, only: [:index, :show] do
    resources :profile, only: [:edit, :update]
  end
end
