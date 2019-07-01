Rails.application.routes.draw do
	root to: 'pages#home'
	get 'about', to: 'pages#about'
	resources :contacts
<<<<<<< HEAD
	
=======
>>>>>>> contact_form
end
