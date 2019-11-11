class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
        @services = Service.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        user = User.new
        user.first_name = params[:user][:first_name]
        user.last_name = params[:user][:last_name]
        user.age = params[:user][:age]
        user.email = params[:user][:email]
        user.picture = params[:user][:picture]
        user.save
        redirect_to users_path
    end
    
    def edit 
        @user = User.find(params[:id])
    end
    
    def update
        user = User.find(params[:id])
        user.first_name = params[:user][:first_name]
        user.last_name = params[:user][:last_name]
        user.age = params[:user][:age]
        user.email = params[:user][:email]
        user.picture = params[:user][:picture]
        user.save
        redirect_to users_path
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to users_path
    end
    
    def add_service
        user = User.find(params[:user_id])
        user_service = UserService.new
        user_service.user_id = params[:user_id]
        user_service.service_id = params[:service_id]
        user_service.save
        redirect_to user_path(user)
    end
    
    def delete_service
        user_service = UserService.find(params[:id])
        user = user_service.user.id
        user_service.destroy
        redirect_to user_path(user)
    end
end
