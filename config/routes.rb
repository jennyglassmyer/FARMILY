Rails.application.routes.draw do
  devise_for :users
  root to: 'animals#index'
  resources :animals, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
end
