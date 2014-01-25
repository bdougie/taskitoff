Taskitoff::Application.routes.draw do

 devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

	 resources :todos do

	  post 'complete', to: 'todos#complete'
	 
	 end

  root :to => 'todos#index' #rails wont except root 'pages#home'

  match 'completed' => 'todos#completed'
  
end
