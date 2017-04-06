Rails.application.routes.draw do
  get 'books/index'
  get 'pages/home'
  get 'podium' => 'pages#home'
  get 'podium1' => 'pages#home1'
  get 'books' => 'books#index'
  get root  'pages#home'
  
  post '/books' => 'books#create'
  
  get 'books/:id' => 'books#show'
  
  patch 'books/:id' => 'books#update'
  
  delete 'books/:id' => 'books#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
