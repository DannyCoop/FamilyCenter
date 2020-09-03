class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :points, :family_id
end
