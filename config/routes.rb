Rails.application.routes.draw do
  

  get 'users/index'

  devise_for :users
  resources :articles do
  	resources :comments, :only => [:create, :destroy]
  end
  root 'articles#index'
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
