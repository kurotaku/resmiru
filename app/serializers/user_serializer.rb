class UserSerializer < ActiveModel::Serializer
  attributes %i[id ulid name]
end
