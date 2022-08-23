class GetuserinformationController < ApplicationController
      def show
        @user = User.find_by_id(params[:id])
        render json: {
            user: @user,
            status: 200
          }, status: :ok
      end
end
