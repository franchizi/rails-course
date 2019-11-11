Rails.application.routes.draw do
  delete '/users/remove_service' => 'users#delete_service'
  resources :users
  resources :services
  post '/users/add_service' => 'users#add_service'
end
