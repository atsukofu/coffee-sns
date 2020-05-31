class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :product, presence: true
  validates :shop, presence: true
  validates :price, presence: true, numericality: true

end
