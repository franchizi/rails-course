Rails.application.routes.draw do
delete '/users/remove_place' => 'users#delete_place'
resources :places
resources :users
post '/users/add_place' => 'users#add_place'

end
