class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :points
end
