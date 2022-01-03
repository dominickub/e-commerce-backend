class UsersController < ApplicationController

  skip_before_action :authenticate_user, only: [:create,:index]

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
      end

      def index 
        render json: User.all, status: :ok 
      end  
      
      private 

      def user_params
        params.permit(:username,:email, :password, :password_confirmation)
      end
end
