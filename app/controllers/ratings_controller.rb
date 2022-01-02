class RatingsController < ApplicationController

    def create
        if buyer_id == @current_user
            rating = Rating.create!(ratings_params)
        end
    end

    def update
        if buyer_id == @current_user
            @rating.update!(ratings_params)
    end

    def destroy
        if buyer_id == @current_user
            @rating.destroy
        end
    end

    private

    def ratings_params
        params.permit(:rating, :comment, :item_id, :seller_id, :buyer_id)
    end

end
