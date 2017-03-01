class Post < ApplicationRecord

  belongs_to :user, counter_cache: true

  has_many :comments, dependent: :destroy

  validates :user, :title, :body, presence: true

end
