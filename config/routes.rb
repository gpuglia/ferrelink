Rails.application.routes.draw do
  devise_for :salesmen
  devise_for :admins

  resources :orders, only: [:new, :create]
  resources :clients, only: [:index]
end
