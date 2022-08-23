class VotesController < ApplicationController
    def castvote
        byebug
        @user = User.find_by_id(params[:player_id])
        if @user.nil?  
            render json: {
                message: "Invalid UserId",
                status: 404
            }, status: :ok
        else
            @ngo_id = Ngo.find_by_id(params[:ngo_id]) 
            byebug
            if @user.nil?  
                render json: {
                    message: "Invalid Ngo Id",
                    status: 404
                }, status: :ok
            else
                # byebug
                if @ngo_id.name == "ngo_id_1_id"
                    @ngo.ngo_1_votes++
                    @ngo.save
                end
            end
        end
end
end