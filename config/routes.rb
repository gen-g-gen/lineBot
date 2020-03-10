Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root 'groups#index'

  resources :users, only: [:new, :create, :index]
  resources :groups, only: [:new, :create, :edit, :update,:destroy] do
    resources :messages, only: [:index,:create]
  end
end
