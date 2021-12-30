class Rating < ApplicationRecord
    belongs_to :seller, class_name: "User", foreign_key: "seller_id"
    belongs_to :item
end
