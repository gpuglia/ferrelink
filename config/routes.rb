Rails.application.routes.draw do
  resources :orders, only: [:new, :create] do
    get 'confirm', on: :member
  end

  root "orders#new"
end
