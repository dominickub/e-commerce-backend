class User < ApplicationRecord
    has_many :purchased_item, class_name: 'Item', foreign_key: 'buyer_id', through: :reviews
    has_many :sold_items, class_name: 'Item', foreign_key: 'seller_id', through: :reviews
    has_many :reviews, class_name: 'Review', foreign_key: 'seller_id'
    has_secure_password
end
