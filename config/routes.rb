Rails.application.routes.draw do

  get 'diseases/index'
  get 'diseases/new'
  #Ruta, to => controlador con acción a responder esa "url"
  get 'signup', to: 'users#new' #Registro de usuario.
  get 'login', to: 'sessions#new' #Solicita fórmulario de auth.
  post 'login', to: 'sessions#create' #Evaluación de credenciales
  get 'logout', to: 'sessions#destroy' #Cerrar sesión.

  root 'welcome#index'
  get 'welcome/main'


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
