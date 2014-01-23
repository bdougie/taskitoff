Taskitoff::Application.routes.draw do

 devise_for :users

	 resources :todos do

	  post 'completed', to: 'todos#completed'
	 
	 end

  root :to => 'todos#index' #rails wont except root 'pages#home'


  
end
