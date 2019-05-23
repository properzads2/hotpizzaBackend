class PizzasController < ApplicationController

    def index 
        @pizzas = Pizza.all
        render json: @pizzas, status: :ok
    end 

    def show 
        @pizza = Pizza.find(params[:id])
        render json: @pizza, status: :ok
    end

    def create 
        @pizza = Pizza.new(pizza_params)
        if @pizza.save
            render json: @pizza, status: :created
        else
            render json: {errors: @pizza.errors.full_messages}, status: :unporcessable_entity
        end 
    end 

    def update
    end 

    def delete
        @pizza = Pizza.find(params[:id])
        @pizza.destroy
        render json: {}, status: :no_content 
    end 

    private 

    def pizza_params 
        params.permit(:name, :topping1, :topping2, :topping3, :total, :status, :order_id)
    end 

end


















































































