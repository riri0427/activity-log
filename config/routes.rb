Rails.application.routes.draw do
  devise_for :users
  root 'reports#index'
  resources :reports, only: [:index, :new, :create]
end
