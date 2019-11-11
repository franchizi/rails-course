require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'test.db' }

class Contact < ActiveRecord::Base
end

get '/create' do
    erb :new
end

post '/' do
   contact = Contact.new
   contact.first_name = params[:first_name]
   contact.last_name = params[:last_name]
   contact.phone = params[:phone]
   contact.email = params[:email]
   contact.address = params[:address]
   contact.city = params[:city]
   contact.state = params[:state]
   contact.zip = params[:zip]
   contact.save
   redirect '/'
end

get '/' do
    erb :contacts
end

get '/all' do
    @contact = Contact.all
    erb :all
end

get '/edit' do
    @edit = Contact.find_by(id: params[:id])
    erb :edit
end

post '/edit' do 
    contact = Contact.find_by(id: params[:id])
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.phone = params[:phone]
    contact.email = params[:email]
    contact.address = params[:address]
    contact.city = params[:city]
    contact.state = params[:state]
    contact.zip = params[:zip]
    contact.save
    redirect '/'
end

get '/delete' do
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    redirect '/'
end

post '/results' do
    query = "%#{params[:result]}%"
    @result = Contact.where("first_name LIKE ? OR last_name LIKE ?", query, query)
    erb :results
end