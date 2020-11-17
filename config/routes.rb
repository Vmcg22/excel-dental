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

 
  resources :patients, except: [:destroy, :show]
  get 'patients/delete'
  get 'patients/destroy' 
  get 'patients/:id' => 'patients#show'
  

    
  resources :diseases
  get 'diseases/:id' => 'diseases#show'
  
  get 'allergies/index'
  resources :allergies
  get 'allergies/:id' => 'allergies#show'
  

  resources :medicines
  get 'medicines/:id' => 'medicines#show'

  resources :substances
  get 'substances/:id' => 'substances#show'

  resources :medical_files

  resources :medical_appointments
  get 'medical_appointments/:id' => 'medical_appointments#show'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
