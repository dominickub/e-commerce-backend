
class ItemsController < ApplicationController
  before_action :find_item, only: [:destroy,:update,:purchased_item]
  skip_before_action :authenticate_user, only: [:create,:update,:index,:purchased_item]
    def create
        item = Item.create!(items_params)
        render json: item, status: :created
    end 

    def destroy
        if @item.seller_id == @current_user.id
            @item.destroy
        end
    end

    def index 
        item = Item.all
        render json: item, status: :ok
    end

    def update
        #if @item.seller_id == @current_user.id
            @item.update!(items_params)
        #end
    end
    
    def purchased_item
        #if @item.seller_id != @current_user.id 
           @item.update!(quantity: @item.quantity - params[:quantity])
           render json: @item, status: :ok

       # end
    end 

    private 

    def items_params
        params.permit(:name, :description, :price, :sold, :quantity, :image, :seller_id,:buyer_id)
    end
end   
