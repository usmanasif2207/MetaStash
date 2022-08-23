class UtcController < ApplicationController
    def time
        render json: { time: '' + DateTime.now.utc.to_s }, status: :ok
    end
end