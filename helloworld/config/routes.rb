Rails.application.routes.draw do

  get '/home' => 'hello#home' 
  get '/sup' => 'hello#sup'

  get '/aloha' => 'hawaiian_hello#aloha'
  get '/shaka' => 'hawaiian_hello#sup'

end
