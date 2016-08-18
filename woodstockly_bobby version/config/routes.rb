Woodstockly::Application.routes.draw do
  root to: 'restaurants#index'

  get '/reviews/new' => 'reviews#new'
  post '/reviews/create' => 'reviews#create'


end
