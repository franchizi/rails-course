class CoursesController < ApplicationController
    def new
    end
    
    def create
        course = Course.new
        course.name = params[:name]
        course.location = params[:location]
        course.description = params[:description]
        course.save
        redirect_to '/courses'
    end
    
    def index
        @course = Course.all
    end
    
    def edit
        @edit = Course.find_by(id: params[:id])
    end
    
    def update
        course = Course.find_by(id: params[:id])
        course.name = params[:name]
        course.location = params[:location]
        course.description = params[:description]
        course.save
        redirect_to '/courses'
    end
    
    def delete
        course = Course.find_by(id: params[:id])
        course.destroy
        redirect_to '/courses'
    end
    
    def show
        @course = Course.find_by(id: params[:id])
    end
end
