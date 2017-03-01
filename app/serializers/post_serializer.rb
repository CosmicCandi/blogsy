class PostSerializer < ActiveModel::Serializer

belongs_to :user
has_many :comments

attributes :title, :body, :summary, :created_at, :updated_at, :comments_count

end
