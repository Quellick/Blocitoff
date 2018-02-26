Rails.application.routes.draw do
  devise_for :users
  
  resources :users
  
  get 'users/show'

  get 'welcome/index'

  get 'welcome/about'
  
  root 'welcome#index'
end
