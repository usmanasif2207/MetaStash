class GetuserinformationController < ApplicationController
    def show
        @user = User.find_by_id(params[:id])
        if @user.nil?  
          render json: {
              message: "Invalid UserId",
               status: 404
            }, status: :ok
        else
        render json: {
            user: @user,
            status: 200
          }, status: :ok
        end
    end
end
