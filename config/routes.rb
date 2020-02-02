Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'

  resources :users, only: [:new, :index, :edit, :update]
  resources :groups, only: [:index, :new, :edit,  :create]
  

end
