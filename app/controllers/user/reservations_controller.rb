class User::ReservationsController < ApplicationController

	def new
	end
	
	def create
		@reservation = current_user.reservations.create(reservation_params)
		redirect_back(fallback_location: root_path)
	end

	def destroy
	end
end
