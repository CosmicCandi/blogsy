class User < ApplicationRecord

  has_many :posts, counter_cache: true
  validates :username, :email, presence: true

end
