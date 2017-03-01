class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :posts_count
end
