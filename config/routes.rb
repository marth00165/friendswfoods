Rails.application.routes.draw do
  resources :restaurants
  resources :likeds
  resources :restaurant_events
  resources :events
  resources :user_events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
