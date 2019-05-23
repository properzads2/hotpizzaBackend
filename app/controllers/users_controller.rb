class UsersController < ApplicationController

    def index 
        @users = User.all
        render json: @users, status: :ok
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user, status: :ok
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created
        else
            render json: {errors: @user.errors.full_messages}, status: :unporcessable_entity
        end 
    end 

    def update
    end 

    def delete
        @user = User.find(params[:id])
        @user.destroy
        render json: {}, status: :no_content 
    end 

    private 

    def user_params 
        params.permit(:name, :email, :password_digest, :address, :phone, :order_id)
    end 


end
