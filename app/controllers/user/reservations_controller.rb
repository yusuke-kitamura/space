class User::ReservationsController < ApplicationController

	def new
		
	end

	def create
		@reservation = current_user.reservations.create(reservation_params)
		redirect_back(fallback_location: root_path), notice: "予約完了"
	end

	def destroy
	end

	private
	def reservation_params
		params.require(:reservation).permit(:salon_id, :user_id, :date)
	end
end
