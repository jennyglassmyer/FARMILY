Rails.application.routes.draw do
  devise_for :users
  root to: 'animals#index'
  resources :animals, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
  resources :bookings, only: :destroy
  resources :dashboard, only: [:index, :show]
  patch "/animals/:animal_id/bookings/:id/accept", to: "bookings#accept", as: :accept
  patch "/animals/:animal_id/bookings/:id/decline", to: "bookings#decline", as: :decline
end
