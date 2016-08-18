Rails.application.routes.draw do
  get '/cars' => 'cars#index'
  #form for a new car
  get '/new' => 'cars#new'
  #form posts here
  post '/create' => 'cars#create'
end
