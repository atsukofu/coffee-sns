class Comment < ApplicationRecord
  has_many :posts
  belongs_to :user

  validates :content, presence: true
end
