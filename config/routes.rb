Rails.application.routes.draw do
  resources :exams
  resources :animals
  resources :pet_owners
  resources :veterinaries

  # get '/pat/', to: 'patients#show'
  get '/create', to: 'sessions#index'
  get '/destroy', to: 'sessions#destroy'

  root 'animals#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  
end
