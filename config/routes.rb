Rails.application.routes.draw do
  devise_for :users
  root 'reports#index'
  resources :reports, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:show] do
    # 仮置き
    member do
      get 'activity'
    end
  end
  resources :activities, only: [:new, :create]
end
