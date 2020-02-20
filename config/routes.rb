Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  root to: 'poilus#index'
  resources :poilus do
    resources :bookings, only: [ :new, :create, :update, :edit, :destroy]
  end
  get '/poilus/:poilu_id/bookings/:booking_id/pay', to: 'bookings#pay', as: :pay
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
