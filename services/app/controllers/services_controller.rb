class ServicesController < ApplicationController
    def index
        @services = Service.all
    end
    
    def show
        @service = Service.find(params[:id])
        @users =User.all
    end
    
    def new
        @service = Service.new
    end
    
    def create
        service = Service.new
        service.name = params[:service][:name]
        service.description = params[:service][:description]
        service.logo = params[:service][:logo]
        service.save
        redirect_to services_path
    end
    
    def edit 
        @service = Service.find(params[:id])
    end
    
    def update
        service = Service.find(params[:id])
        service.name = params[:name]
        service.description = params[:description]
        service.logo = params[:logo]
        service.save
        redirect_to services_path
    end
    
    def destroy
        service = Service.find(params[:id])
        service.destroy
        redirect_to services_path
    end
    
end
