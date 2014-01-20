Taskitoff::Application.routes.draw do

 

 devise_for :users

 resources :todos

  root :to => 'todos#index' #rails wont except root 'pages#home'
  
end
