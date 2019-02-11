class RestaurantOrdersController < ApplicationController
    def index
        @orders = Order.where(status: ['Submitted', 'Preparing', 'Enroute', 'Complete'])
    end
    
    def prepare 
        @order = Order.find(params[:id])
        @order.status = 'Preparing'
        @order.save
        redirect_to restaurant_orders_path
    end
    
    def enroute
        @order = Order.find(params[:id])
        @order.status = 'Enroute'
        @order.save
        redirect_to restaurant_orders_path
    end
    
    def deliver
        @order = Order.find(params[:id])
        @order.status = 'Delivered'
        @order.save
        redirect_to restaurant_orders_path
    end
    
    def complete
        @order = Order.find(params[:id])
        @order.status = 'Complete'
        @order.save
        redirect_to restaurant_orders_path
    end
end
