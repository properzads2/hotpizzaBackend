class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :address, :phone
end
