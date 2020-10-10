Rails.application.routes.draw do
  get 'patients/index'
  get 'patients/show'
  get 'patients/new'
  #get 'users/new', to: 'users#new'
  #get 'users/create'
  
  get 'welcome/index'
  root 'welcome#index'
  #resource :patients, only: [:index, :show]

  resource :users, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
