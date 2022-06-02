Rails.application.routes.draw do
  root to: "cars#index"
  devise_for :users
  resources :cars do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:destroy, :index]
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
end
