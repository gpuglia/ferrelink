Rails.application.routes.draw do
  resources :orders, only: [:show, :new, :create] do
    member do
      get 'confirm'
    end
  end

  root "orders#new"
end
