Rails.application.routes.draw do
  devise_for :users
  root to: "users#front"
  resources :users, only: [:index, :show] do
    resources :profiles, only: [:new, :create, :edit, :update]
  end
end
