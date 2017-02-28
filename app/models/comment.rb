class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user
  validates :post
  validates :body

end
