class ContactsController < ApplicationController
    def home
    end
    
    def index
        if params[:result] 
            query = "%#{params[:result]}%" 
	        @contacts = Contact.where('first_name LIKE ? OR last_name LIKE ?', query, query) 
	    else
            @contacts = Contact.all
        end
    end
    
    def new
    end
    
    def create
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
        redirect_to '/contacts'
    end
    
    def edit
        @edit = Contact.find_by(id: params[:id])
    end
    
    def update
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
        redirect_to '/contacts'
    end
    
    def delete
        contact = Contact.find_by(id: params[:id])
        contact.save
        redirect_to '/contacts'
    end
end
