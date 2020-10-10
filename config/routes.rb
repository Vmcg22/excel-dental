Rails.application.routes.draw do


  root 'welcome#index'
  get 'welcome/index'

  #get 'patients/index'
  #get 'patients/show'
  #get 'patients/new'
  
  #get 'users/new', to: 'users#new'
  #get 'users/create'
  
  
  
  #resource :patients, only: [:index, :show]

  resource :users, only: [:new, :create]
  resource :patients

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
