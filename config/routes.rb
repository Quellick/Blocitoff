Rails.application.routes.draw do
  get 'items/create'

  devise_for :users
  
  resources :users, only: [:show, :destroy] do
    resources :items, only: [:create, :show, :destroy]
  end
  
  get 'users/show'

  get 'welcome/index'

  get 'welcome/about'
  
  root 'users#show'
end
