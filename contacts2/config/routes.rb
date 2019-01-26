Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'contacts#home'
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  post '/contacts/new' => 'contacts#create'
  get '/contacts/edit' => 'contacts#edit'
  post 'contacts/edit' => 'contacts#update'
  get 'contacts/delete'=> 'contacts#delete'
  post '/contacts/results' => 'contacts#results'
end
