Rails.application.routes.draw do
  get '/' => 'contacts#home'
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  post '/contacts/new' => 'contacts#create'
  get '/contacts/edit' => 'contacts#edit'
  post 'contacts/edit' => 'contacts#update'
  get 'contacts/delete'=> 'contacts#delete'
end
