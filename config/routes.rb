Rails.application.routes.draw do
  
  #Ruta, to => controlador con acción a responder esa "url"
  get 'signup', to: 'users#new' #Registro de usuario.
  get 'login', to: 'sessions#new' #Solicita fórmulario de auth.
  post 'login', to: 'sessions#create' #Evaluación de credenciales
  get 'logout', to: 'sessions#destroy' #Cerrar sesión.

  root 'welcome#index'
  get 'welcome/main'
  get 'welcome/:id' => 'welcome#show'



  resource :users, only: [:new, :create]

  resources :patients
  get 'patients/:id' => 'patients#show'
  
  resource :diseases
  get 'diseases/:id' => 'diseases#show'
  
  get 'allergies/index'
  get 'allergies/:id' => 'allergies#show'
  resources :allergies

  resources :medicines
  get 'medicines/:id' => 'medicines#show'

  resources :substances
  get 'substances/:id' => 'substances#show'

  resources :medical_files
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
