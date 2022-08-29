class PollController < ApplicationController
    def create
        @user = User.find_by_id(params[:player_id])
        if @user.nil?
            render json: {
                message: "Invalid UserId",
                 status: 404
              }, status: :ok
        else
            @ngo_id_1 = Ngo.find_by_id(params[:ngo_id_1])
            @ngo_id_2 = Ngo.find_by_id(params[:ngo_id_2])
            @ngo_id_3 = Ngo.find_by_id(params[:ngo_id_3])
            @ngo_id_4 = Ngo.find_by_id(params[:ngo_id_4])
            if @ngo_id_1.nil?
                render json: {
                    message: "Invalid Ngo Id 1",
                     status: 404
                  }, status: :ok
            elsif @ngo_id_2.nil?
                render json: {
                    message: "Invalid Ngo Id 2",
                     status: 404
                  }, status: :ok
            elsif @ngo_id_3.nil?
                render json: {
                    message: "Invalid Ngo Id 3",
                     status: 404
                  }, status: :ok
            elsif @ngo_id_4.nil?
                render json: {
                    message: "Invalid Ngo Id 4",
                     status: 404
                  }, status: :ok
            else
                @poll=Poll.create(
                    user_id: params[:player_id],
                    ngo_id_1_id: params[:ngo_id_1],
                    ngo_id_2_id: params[:ngo_id_2],
                    ngo_id_3_id: params[:ngo_id_3],
                    ngo_id_4_id: params[:ngo_id_4],
                    is_active: params[:is_active]
                )
                render json: {message:"Poll created successfully!",data: JSON.parse(@poll.to_json(:only => [:id,:user_id, :ngo_id_1_id,:ngo_id_2_id,:ngo_id_3_id,:ngo_id_4_id])),status:200}, status: :ok
            end
        end
    end
    def index
        @polls = Poll.all
        if @polls.present?
            @i = 1
                # # create array with name with 4 objects...
                @ngo1 = Ngo.find_by_id(@polls[@i].ngo_id_1_id)
                @ngo2 = Ngo.find_by_id(@polls[@i].ngo_id_2_id)
                @ngo3 = Ngo.find_by_id(@polls[@i].ngo_id_3_id)
                @ngo4 = Ngo.find_by_id(@polls[@i].ngo_id_4_id)
                @result = [
                            { "Ngo_id": @polls[@i].ngo_id_1_id, "Name": @ngo1.name, "Votes": @polls[@i].ngo_1_votes},
                            { "Ngo_id": @polls[@i].ngo_id_2_id, "Name": @ngo2.name, "Votes": @polls[@i].ngo_2_votes},
                            { "Ngo_id": @polls[@i].ngo_id_3_id, "Name": @ngo3.name, "Votes": @polls[@i].ngo_3_votes},
                            { "Ngo_id": @polls[@i].ngo_id_4_id, "Name": @ngo4.name, "Votes": @polls[@i].ngo_4_votes}
                        ]
            render json: {status:200, data: @result }, status: :ok
            # render json: {status:200, data: JSON.parse(@polls.to_json(:only => [:ngo_id_1_id,:ngo_id_1_id.name,:ngo_1_votes,:ngo_id_2_id,:ngo_2_votes,:ngo_id_3_id,:ngo_3_votes,:ngo_id_4_id,:ngo_4_votes]))}, status: :ok
        else
            render json: {message:"No Polls available to vote",status:404}, status: :ok
        end
    end
end