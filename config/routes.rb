Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#show', page: 'home'
  resources :users, except: [:index, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'

  get '/recipes/all', to: 'recipes#all'
  
  resources :recipes do
    resources :comments, only: [:create, :destroy], shallow: true
  end
  get '/dashboard', to: 'users#show'
  

end