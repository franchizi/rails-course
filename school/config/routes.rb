Rails.application.routes.draw do
  get '/courses/new' => 'courses#new'
  post '/courses' => 'courses#create'
  get '/courses' => 'courses#index'
  get '/courses/:id' => 'courses#edit'
  post '/courses/edit' => 'courses#update'
  get '/courses/delete' => 'courses#delete'
  get '/courses/show' => 'courses#show'
  
  get '/students/new' => 'students#new'
  post '/students' => 'students#create'
  get '/students' => 'students#index'
  get '/students/edit' => 'students#edit'
  post '/students/edit' => 'students#update'
  get '/students/delete' => 'students#delete'
  root 'courses#index'
end
