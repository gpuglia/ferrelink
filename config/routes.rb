Rails.application.routes.draw do
  devise_for :salesmen
  devise_for :admins

  resource :orders, only: [:new]
end
