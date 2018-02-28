Rails.application.routes.draw do
  get 'items/create'

  devise_for :users
  
  resources :users do
    resources :item, only: [:create]
  end
  
  get 'users/show'

  get 'welcome/index'

  get 'welcome/about'
  
  root 'welcome#index'
end
