Rails.application.routes.draw do
  resources :pubs
  resources :posts
  resources :todos
  
  root 'pubs#index'
  
  get 'users/home' => 'users#home'

  get 'users/login'
  get 'users/logout' => 'users#logout'
  
  post 'users/login' => 'users#check'

  get 'books/index'
  get 'pages/home'
  get 'podium' => 'pages#home'
  get 'podium1' => 'pages#home1'
  #get root  'pages#home'

  #get 'books' => 'books#index'
    
  #post '/books' => 'books#create'
  
  #get 'books/:id' => 'books#show'
  
  #patch 'books/:id' => 'books#update'
  
  #delete 'books/:id' => 'books#destroy'
  

  resources :books, only: [:index, :create, :show, :update, :destroy]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
