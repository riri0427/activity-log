Rails.application.routes.draw do
  devise_for :users
  root 'reports#index'
  resources :reports, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:show] do
    resources :activities, only: :show
  end
  resources :activities, only: [:new, :create]
end
