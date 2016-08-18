Rails.application.routes.draw do
	root to: 'restaurants#index'

	resources :restaurants
	resources :reviews, only: [:create, :new, :index]
end
  