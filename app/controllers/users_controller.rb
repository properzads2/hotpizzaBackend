class UsersController < ApplicationController

    has_many :orders
    has_many :pizzas, through: :orders    

end
