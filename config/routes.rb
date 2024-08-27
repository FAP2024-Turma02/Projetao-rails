Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'comments/new'
  get 'comments/create'
  get 'comments/show'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get 'lessons/new'
  get 'lessons/create'
  get 'lessons/show'
  get 'lessons/edit'
  get 'lessons/update'
  get 'lessons/destroy'
  get 'modules/new'
  get 'modules/create'
  get 'modules/show'
  get 'modules/edit'
  get 'modules/update'
  get 'modules/destroy'
  get 'enrollments/new'
  get 'enrollments/create'
  get 'enrollments/show'
  get 'enrollments/edit'
  get 'enrollments/update'
  get 'enrollments/destroy'
  get 'students/new'
  get 'students/create'
  get 'students/show'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
  get 'courses/new'
  get 'courses/create'
  get 'courses/show'
  get 'courses/edit'
  get 'courses/update'
  get 'courses/destroy'
  root 'home#index'
  get 'home/index'
  # Rotas para sessões
  get 'login', to: 'sessions#new', as: 'new_session'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'destroy_session'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
# root "posts#index"
  

  # Outras rotas
  resources :courses, only: [:index]

  resources :courses, only: [:new, :create]
  resources :students, only: [:new, :create]
  resources :enrollments, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  resources :comments, only: [:new, :create]
  resources :students
  resources :enrollments
  resources :modules, path: 'courses/modules'
  resources :lessons, path: 'courses/modules/lessons'
  resources :comments
  # Se necessário, adicione rotas adicionais para outros recursos

  
end
