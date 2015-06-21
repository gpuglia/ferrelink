Rails.application.routes.draw do
  resources :orders do
    member do
      get 'confirm'
      get 'thank_you'
    end
  end

  root "orders#new"
end
