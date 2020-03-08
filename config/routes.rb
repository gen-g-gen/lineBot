Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root 'groups#index'

  resources :users, only: [:new, :create,:edit, :update, :show,:index]
  resources :groups, only: [:new, :create, :edit,:update] do
    member do
      delete 'destroy'
    end
    resources :messages, only: [:index,:create]
  end
  
  

end
