Taskitoff::Application.routes.draw do

 

 devise_for :users

 resources :todos

  root :to => 'pages#home' #rails wont except root 'pages#home'
  
end
