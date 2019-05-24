class OrdersController < ApplicationController

    def index 
        @orders = Order.all
        render json: @orders, status: :ok
    end 

    def show 
        @order = Order.find(params[:id])
        render json: @order, status: :ok
    end

    def create 
        @order = Order.new(order_params)
        if @order.save
            render json: @order, status: :created
        else
            render json: {errors: @order.errors.full_messages}, status: :unporcessable_entity
        end 
    end 

    def update
    end 

    def delete
        @order = Order.find(params[:id])
        @order.destroy
        render json: {}, status: :no_content 
    end 

    private 

    def order_params 
        params.permit(:user_id, :pizza_id, :total, :status)
    end 


end
