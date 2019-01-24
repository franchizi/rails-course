require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'test.db' }

class Question < ActiveRecord::Base
end


get '/questions' do
    @questions = Question.all
    erb :questions
end

get '/questions/new' do
    erb :new
end


post '/questions' do
    question = Question.new
    question.question = params[:question]
    question.answer = params[:answer]
    question.flag = params[:flag]
    question.save
    redirect '/questions'
end

get '/questions/edit' do
    @edit = Question.find_by(id: params[:id])
    erb :edit
end

post '/questions/edit' do
    question = Question.find_by(id: params[:id])
    question.question = params[:question]
    question.answer = params[:answer]
    question.flag = params[:flag]
    question.save
    
    redirect '/questions'
end

get '/questions/delete' do 
    question = Question.find_by(id: params[:id])
    question.destroy
    
    redirect '/questions'
end


get '/game' do
    erb :game
end

get '/game/go' do
    question = Question.all
    random = rand(question.length)
    @question = question[random]
    erb :go
end

get '/answer' do 
    @question = Question.find(params[:id])
    erb :answer
end
