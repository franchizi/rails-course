Rails.application.routes.draw do
  get '/brands' => 'brands#index'
  get '/brands/new' => 'brands#new'
  post '/brands/create' => 'brands#create'
  get '/brands/edit' => 'brands#edit'
  post '/brands/update' => 'brands#update'
  get '/brands/delete' => 'brands#delete'
  get '/brands/show' => 'brands#show'
  
  get '/cars' => 'cars#index'
  get '/cars/new' => 'cars#new'
  post '/cars/create' => 'cars#create'
  get '/cars/edit' => 'cars#edit'
  post '/cars/update' => 'cars#update'
  get '/cars/delete' => 'cars#delete'
end
