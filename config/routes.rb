Rails.application.routes.draw do
  root 'static_pages#home'
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create, :edit, :show]
  resources :flights
end
