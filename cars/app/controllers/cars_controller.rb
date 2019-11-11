class CarsController < ApplicationController
    def index
        @cars = Car.all
    end
    
    def new
        @brands = Brand.all
    end
    
    def create
        car = Car.new
        car.name = params[:name]
        car.color = params[:color]
        car.year = params[:year]
        car.brand_id = params[:brand_id]
        car.save
        redirect_to '/cars'
    end
    
    def edit
        @edit = Car.find_by(id: params[:id])
    end
    
    def update
        car = Car.find_by(id: params[:id])
        car.name = params[:name]
        car.color = params[:color]
        car.year = params[:year]
        car.save
        redirect_to '/cars'
    end
    
    def delete
        car = Car.find_by(id: params[:id])
        car.delete
        redirect_to '/cars'
    end
end
