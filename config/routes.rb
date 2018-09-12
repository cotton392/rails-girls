Rails.application.routes.draw do
  resources :comments
  get 'pages/info'
	root to: redirect('/ideas')
  resources :ideas do
  	resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
