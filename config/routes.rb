Rails.application.routes.draw do
  #Ruta, to => controlador con acción a responder esa "url"
  get 'signup', to: 'users#new' #Registro de usuario.
  get 'login', to: 'sessions#new' #Solicita fórmulario de auth.
  post 'login', to: 'sessions#create' #Evaluación de credenciales
  get 'logout', to: 'sessions#destroy' #Cerrar sesión.

  root 'welcome#index'
  get 'welcome/main'


  resource :users, only: [:new, :create]

  resource :patients
  get 'patients/:id' => 'patients#show'
  
  resource :diseases
  
  get 'allergies/index'
  resources :allergies
  resources :medicines
  resources :substances
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
