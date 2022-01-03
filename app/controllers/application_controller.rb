class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    before_action :authenticate_user 

    private

    def find_item
        @item = Item.find(params[:id])
    end

    def find_rating
        @rating = Rating.find(params[:id])
    end
     
    def authenticate_user
        @current_user = User.find_by(id: session[:user_id])
        render json: { error: "Not authorized" }, status: :unauthorized unless @current_user
    end

    def render_unprocessable_entity
        render json: {error: "unprocessable entity"}, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: { error: "not found" }, status: :not_found
    end
end
