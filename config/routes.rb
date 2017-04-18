Rails.application.routes.draw do
  

  get 'likes/create'

  get 'likes/destroy'

  get 'users/index'

  devise_for :users
  resources :articles do
  	resource :comments, :only => [:create, :destroy]
  end
  resources :users, only: [:index, :show] do
  	get :likes, on: :member
  end
  resources :articles do
  	resource :likes, only: [:create, :destroy]
  end
  root 'articles#index'
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
