Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#index"

  get 'sobre',    	to: 'static_page#sobre'
	get 'contatos', 	to: 'static_page#contatos'
  resources :contacts
  resources :users, only: [:new, :create]

end
