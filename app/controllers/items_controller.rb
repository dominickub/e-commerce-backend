class ItemsController < ApplicationController

    def create
        if seller_id == @current_user
        item = Item.create!(items_params)
        end
    end 

    def destroy
        if seller_id == @current_user
            @item.destroy
        end
    end

    def update
        if seller_id == @current_user
            @item.update!(items_params)
        end
    end
    
    def purchased_item
        if buyer_id == @current_user
            @item.update!(sold: true)
        end
    end

    private 

    def items_params
        params.permit(:name, :description, :price, :sold, :quantity, :image, :seller)
    end
end   
