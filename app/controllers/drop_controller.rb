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
    def collect
        @user = User.find_by_id(params[:player_id])
        @drop = Drop.find_by_id(params[:drop_id])
        if @user.nil?
            render json: {
                message: "Invalid User Id",
                status: 404
            }, status: :ok
        elsif @drop.nil?
            render json: {
                message: "Invalid Drop Id",
                    status: 404
                }, status: :ok
        else
            if @user.payment_status == false
                render json: {
                    message: "Please Subscribe to Collect Drop.",
                    status: 401
                }, status: :ok
            elsif @drop.is_active == true
                @drop.is_active = false
                @drop.save
                @user.total_collection = @user.total_collection + @drop.reward_amount
                @user.save
                render json: {
                    message: "Drop Collected!  #{@drop.reward_amount}$ added to User id: #{@user.id}",
                    status: 200
                }, status: :ok
            else
                render json: {
                    message: "Drop already Collected!",
                    status: 401
                }, status: :ok
            end
        end
    end
end