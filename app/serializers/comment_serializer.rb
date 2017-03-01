class CommentSerializer < ActiveModel::Serializer

  belongs_to :user

  attributes :body, :user

end
