Taskitoff::Application.routes.draw do

 resources :todos

  root :to => 'pages#home' #rails wont except root 'pages#home'
  
end
