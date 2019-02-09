class BrandsController < ApplicationController
    def index
        @brands = Brand.all
    end
    
    def new
    end
    
    def create
        brand = Brand.new
        brand.name = params[:name]
        brand.country = params[:country]
        brand.save
        redirect_to '/brands'
    end
    
    def edit
        @edit = Brand.find_by(id: params[:id])
    end
    
    def update
        brand = Brand.find_by(id: params[:id])
        brand.name = params[:name]
        brand.country = params[:country]
        brand.save
        redirect_to '/brands'
    end
    
    def delete
        brand = Brand.find_by(id: params[:id])
        brand.delete
        redirect_to '/brands'
    end
    
    def show
        @brand = Brand.find_by(id: params[:id])
    end
end
