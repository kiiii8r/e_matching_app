Rails.application.routes.draw do
  devise_for :users
  root to: "users#front"
  resources :users, only: [:index, :show] 
end
