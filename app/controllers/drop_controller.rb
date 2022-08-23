class DropController < ApplicationController
    def show
        @user = User.find_by_id(params[:id])
        if @user.nil?  
        render json: {
            message: "Invalid UserId",
             status: 404
          }, status: :ok
        else
        @drop = Drop.where(city: @user.city)

            if !@drop.present?  || @user.city.nil?
            render json: {
                message: "No Drops found in your city",
                status: 404
            }, status: :ok  
            else
                render json: {status: 200,
                    data: @drop 
                }, status: :ok
            end
        end
    end
end