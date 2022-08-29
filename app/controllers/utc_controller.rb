class UtcController < ApplicationController
    before_action :active_drop
    before_action :non_active_drop

    def time
        render json: { time: '' + DateTime.now.utc.to_s }, status: :ok
    end

    def test
        @drop = User.all
        # render :json => {:moulding => @moulding, 
        #     :material_costs => @material_costs }

        render json: { 
                            :"" => {
                                "total_amount": 0, 
                                "total_drop_locations": 1, 
                                "drops": @active_drop    
                            },
                            :"user2" => {
                                "total_amount": 0, 
                                "total_drop_locations": 2, 
                                "drops": @non_active_drop  
                            }
                        }, status: :ok
    end

    private

    def active_drop
        @active_drop = User.find_by_role("paid")
    end   
    
    def non_active_drop
        @non_active_drop = User.find_by_role("unpaid")
    end

end