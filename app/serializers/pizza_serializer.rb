class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :topping1, :topping2, :topping3, :total, :status, :user_id
end
