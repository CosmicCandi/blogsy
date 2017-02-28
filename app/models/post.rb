class Post < ApplicationRecord

  belongs_to :user, counter_cache: true
  validates :user, :title, :body, presence: true

end
