Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#show', page: 'home'

  get 'users/:id', to: 'users#show'

  resources :users, only: [:create, :new, :edit, :show, :update, :destroy]
end
