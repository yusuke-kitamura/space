class User::ReservationsController < ApplicationController

	def new
		
	end

	def create
		
	end

	def destroy
	end

	private
	def reservation_params
		params.require(:reservation).permit(:salon_id, :user_id, :date)
	end
end
