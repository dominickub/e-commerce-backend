class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "seller_id", through: :reviews
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id", optional: true, through: :reviews
  has_many :category_items
  has_many :categories, through: :category_items
  has_many :reviews, class_name: 'Review'
end
