class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  has_many :ratings, class_name: 'Rating', dependent: :delete_all
  has_many :buyers, class_name: "User", foreign_key: "buyer_id", through: :ratings
  has_many :category_items
  has_many :categories, through: :category_items
  
  has_and_belongs_to_many :cartlists

  validates :name, presence: true
end
