class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :pizza_id, :total, :status
end
