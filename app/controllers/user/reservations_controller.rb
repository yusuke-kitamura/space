class User::ReservationsController < ApplicationController

	def new
		
	end

	def create
		user = current_user
		salon = Salon.find(params[:salon_id])
		reservation = Reservation.create(salon_id: salon.id, user_id: user.id)
		reservation.save
		byebug
		redirect_back(fallback_location: root_path)
	end

	def destroy
	end

	private
	def reservation_params
		params.require(:reservation).permit(:salon_id, :user_id, :date)
	end
end
