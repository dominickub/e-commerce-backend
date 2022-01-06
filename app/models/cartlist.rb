class Cartlist < ApplicationRecord
    belongs_to :buyers, class_name: "User", foreign_key: "buyer_id", optional: true 
    has_and_belongs_to_many :items 
end
